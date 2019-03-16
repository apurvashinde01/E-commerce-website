package com.toystore.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.toystore.model.Account;

@Component
public class User {
	private int uid;
	private String name;
	private String email;
	private int number;
	private String password;
	private int amount;

	Account account;
	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	

	public void addUser(User u) {
		
		System.out.println(u.getEmail());
		account.addUser(u);
	}

	public ArrayList<User> getAllUsers() {
		ArrayList<User> list =(ArrayList<User>)account.getAllUser();
		return list;
	}

}
