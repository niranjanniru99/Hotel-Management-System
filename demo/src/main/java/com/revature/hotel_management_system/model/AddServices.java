package com.revature.hotel_management_system.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class AddServices {

	@Id
	@SequenceGenerator(

			name = "add_service_id", sequenceName = "add_service_id", allocationSize = 1

	)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "add_service_id")
	private int addServiceId;
	private int roomNo;
	private String serviceName;
	public int getAddServiceId() {
		return addServiceId;
	}
	public void setAddServiceId(int addServiceId) {
		this.addServiceId = addServiceId;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public AddServices() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AddServices(int addServiceId, int roomNo, String serviceName) {
		super();
		this.addServiceId = addServiceId;
		this.roomNo = roomNo;
		this.serviceName = serviceName;
	}
	

}
