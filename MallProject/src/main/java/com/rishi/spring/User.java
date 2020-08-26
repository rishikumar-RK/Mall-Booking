package com.rishi.spring;

public class User {
	int id;
	String name;
	String pass;
	String pass2;
	String email;
	String number;
	
	public void setId(int id) {
		this.id=id;
	}
	public int getId() {
		return id;
	}
	public void setName(String name) {
		this.name=name;
	}
	public String getName() {
		return name;
	}
	public void setPass(String pass) {
		this.pass=pass;
	}
	public String getPass() {
		return pass;
	}
	public void setPass2(String pass2) {
		this.pass2=pass2;
	}
	public String getPass2() {
		return pass2;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String getEmail() {
		return email;
	}
	public void setNumber(String number) {
		this.number=number;
	}
	public String getNumber() {
		return number;
	}
}
