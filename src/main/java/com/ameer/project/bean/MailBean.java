package com.ameer.project.bean;

import org.hibernate.validator.constraints.NotEmpty;

public class MailBean {

	@NotEmpty(message = "Name is required..!")
	private String name;
	
	@NotEmpty(message = "Email is required..!")
	private String email;
	
	@NotEmpty(message = "Phone is required..!")
	private String phone;
	
	private String message;
	
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
