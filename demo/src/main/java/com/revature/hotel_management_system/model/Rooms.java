package com.revature.hotel_management_system.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
public class Rooms {
	
	@Id
	private int roomNo;
	private String roomType;
	private String roomStatus;
	private float price;
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getRoomStatus() {
		return roomStatus;
	}
	public void setRoomStatus(String roomStatus) {
		this.roomStatus = roomStatus;
	}
	
	public Rooms(int roomNo, String roomType, String roomStatus, float price) {
		super();
		this.roomNo = roomNo;
		this.roomType = roomType;
		this.roomStatus = roomStatus;
		this.price = price;
	}
	public Rooms() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
