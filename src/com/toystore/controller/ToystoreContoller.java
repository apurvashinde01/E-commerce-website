package com.toystore.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ToystoreContoller {
	int cat1;

	@RequestMapping("/")
	public String showHome() {
		return "index";
	}

	@RequestMapping("/Categories")
	public String showCat(HttpServletRequest request, @RequestParam(value = "cat") String cat) {

		System.out.println(cat);
		request.getSession().setAttribute("cat", cat);
		return "categories";
	}

	@RequestMapping("/Single")
	public String showsingle(HttpServletRequest request, @RequestParam(value = "prod") String prod) {
		int prod1=Integer.parseInt(prod);
		System.out.println(prod);
		request.getSession().setAttribute("prod", prod1);
		return "single";
	}
	@RequestMapping("/Contact")
	public String showContact() {
		return "contact";
	}
}
