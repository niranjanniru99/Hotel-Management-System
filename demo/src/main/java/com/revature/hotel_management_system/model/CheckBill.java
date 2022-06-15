package com.revature.hotel_management_system.model;

import org.springframework.stereotype.Component;

@Component
public class CheckBill {
	
	private String customerEmail;

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public CheckBill(String customerEmail) {
		super();
		this.customerEmail = customerEmail;
	}

	public CheckBill() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
