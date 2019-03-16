package com.toystore.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.toystore.beans.Product;
import com.toystore.beans.User;

@Controller
public class ToystoreController {
	int cat1;
	Product product;
	User user;
	ArrayList<Product> list = new ArrayList<Product>();

	int count=0;
	@Autowired
	public void setUser(User user) {
		this.user = user;
	}

	@Autowired
	public void setProduct(Product product) {
		this.product = product;
	}

	@RequestMapping("/")
	public String showHome(HttpServletRequest request, Model model) {
		model.addAttribute("status", 2);
		
		return "index";
	}

	@RequestMapping("/Categories")
	public String showCat(HttpServletRequest request, @RequestParam(value = "cat") String cat, Model model) {

		System.out.println(cat);
		request.getSession().setAttribute("cat", cat);
		
		return "categories";
	}

	@RequestMapping("/Single")
	public String showsingle(HttpServletRequest request, @RequestParam(value = "prod") String prod, Model model) {
		ArrayList<Product> prod_list = product.getAllProducts();

		int prod1 = Integer.parseInt(prod);

		request.getSession().setAttribute("prod", prod1);
		request.getSession().setAttribute("prod_list", prod_list);

		model.addAttribute("prod", prod);

		return "single";
	}

	@RequestMapping("/Contact")
	public String showContact() {
		return "contact";
	}

	@RequestMapping(value = "/User-Register", method = RequestMethod.POST)
	public String showRegister(@ModelAttribute("user") User u, Model model, HttpServletRequest request) {
		user.addUser(u);
		model.addAttribute("msg", u.getName() + "has registered");

		return "register";
	}
	@RequestMapping(value = "/Search", method = RequestMethod.GET)
	public String showSearch(@RequestParam("search") String search,HttpServletRequest request) {
		ArrayList<Product> prod_list = product.getAllProducts();
		ArrayList<Product> list2=new ArrayList<Product>();
		for(Product p:prod_list) {
			if(p.getProd_name().contains(search)) {
				list2.add(p);
			}
		}
		
		request.getSession().setAttribute("list2", list2);
		return "search";
	}

	@RequestMapping(value = "/Register")
	public String reqRegister(Model model) {
		model.addAttribute("user", new User());

		return "register";
	}

	@RequestMapping(value = "/Login")
	public String showlogin() {

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showlogin2(@RequestParam("email") String email, @RequestParam("password") String password,
			Model model, HttpServletRequest request) {
		ArrayList<User> u_list = user.getAllUsers();
		System.out.println(u_list);
		for (User ue : u_list) {
			if (ue.getEmail().contains(email)) {
				if (ue.getPassword().equals(password)) {
					model.addAttribute("status", 1);
					model.addAttribute("msg", "welcome " + email);
					return "index";
				} else {
					model.addAttribute("msg", "invalid Username password");
					model.addAttribute("status", 2);
					return "login";
				}
			}
		}
		return "login";
	}

	@RequestMapping("/ShowCart")
	public String showCart(@RequestParam("prod") String prod,HttpServletRequest request) {
		ArrayList<Product> prod_list = product.getAllProducts();

		for (Product e : prod_list) {
			if (e.getProd_id() == Integer.parseInt(prod)) {

				request.getSession().setAttribute("list", list);
				count=count+1;
				
				list.add(e);
				
			}
		}
		request.getSession().setAttribute("count", count);
		return "categories";
	}
	@RequestMapping("/Cart")
	public String showCart1() {
		return "showcart";
	}
	@RequestMapping("/Pay")
	public String showPay() {
		return "pay";
	}
	@RequestMapping("/Logout")
	public String showLogout() {
		return "index";
	}
}
