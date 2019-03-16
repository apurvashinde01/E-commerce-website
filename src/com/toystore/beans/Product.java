package com.toystore.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.toystore.model.Account;

@Component
public class Product {
	private int prod_id;
	private String prod_name;
	private String prod_desc;
	private int prod_price;
	private int prod_quantity;
	private int cat_id;

	private Account account; 
	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public String getProd_desc() {
		return prod_desc;
	}

	public void setProd_desc(String prod_desc) {
		this.prod_desc = prod_desc;
	}

	public int getProd_price() {
		return prod_price;
	}

	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}

	public int getProd_quantity() {
		return prod_quantity;
	}

	public void setProd_quantity(int prod_quantity) {
		this.prod_quantity = prod_quantity;
	}

	public int getCat_id() {
		return cat_id;
	}

	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	public ArrayList<Product> getAllProducts() {
		// Go to DB and extract all employees 
		ArrayList<Product> list =(ArrayList<Product>)account.getAllproducts();
		
		return list;
	}

}
