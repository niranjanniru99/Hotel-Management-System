package com.revature.hotel_management_system.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class RoomBooking{
	
	@Id
	private int roomNo;
	private String email;
	private Date checkInDate;
	private Date checkOutDate;
	private String typeOfRoom;
	private int adults;
	private int children;
	private long phoneNo;
	private String services;
	private String comments;
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}
	public Date getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public String getTypeOfRoom() {
		return typeOfRoom;
	}
	public void setTypeOfRoom(String typeOfRoom) {
		this.typeOfRoom = typeOfRoom;
	}
	public int getAdults() {
		return adults;
	}
	public void setAdults(int adults) {
		this.adults = adults;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public long getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getServices() {
		return services;
	}
	public void setServices(String services) {
		this.services = services;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public RoomBooking(int roomNo, String email, Date checkInDate, Date checkOutDate, String typeOfRoom, int adults,
			int children, long phoneNo, String services, String comments) {
		super();
		this.roomNo = roomNo;
		this.email = email;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.typeOfRoom = typeOfRoom;
		this.adults = adults;
		this.children = children;
		this.phoneNo = phoneNo;
		this.services = services;
		this.comments = comments;
	}
	public RoomBooking() {
		super();
	}
	
	
	

}
