package com.revature.hotel_management_system.model;

import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
public class CheckOut {

	private int roomNo;
	private String userEmail;
	public CheckOut(int roomNo, String userEmail) {
		super();
		this.roomNo = roomNo;
		this.userEmail = userEmail;
	}
	public CheckOut() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
	
}
