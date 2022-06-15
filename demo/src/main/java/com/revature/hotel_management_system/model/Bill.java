package com.revature.hotel_management_system.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class Bill {
	
	@Id
	@SequenceGenerator(
			
			name="bill_id",
			sequenceName="bill_id",
			allocationSize=1
			
			)
	@GeneratedValue(
			strategy=GenerationType.SEQUENCE,
			generator="bill_id"
			)
	private int billId;
	@ManyToOne
	@JoinColumn(
		
		name="room_no", referencedColumnName="roomNo"
		
	)
	private RoomBooking roomBooking;
	private String customerEmail;
	private String customerName;
	private String servicesUsed;
	private float price;
	public RoomBooking getRoomBooking() {
		return roomBooking;
	}
	public void setRoomBooking(RoomBooking roomBooking) {
		this.roomBooking = roomBooking;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getServicesUsed() {
		return servicesUsed;
	}
	public void setServicesUsed(String servicesUsed) {
		this.servicesUsed = servicesUsed;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
	public Bill(RoomBooking roomBooking, String customerEmail,String customerName,String servicesUsed, float price) {
		super();
		this.roomBooking = roomBooking;
		this.customerEmail = customerEmail;
		this.customerName= customerName;
		this.servicesUsed = servicesUsed;
		this.price = price;
	}
	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
