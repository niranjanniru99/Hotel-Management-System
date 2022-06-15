package com.revature.hotel_management_system.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Customer {
	private String userName;
	@Id
	private String userEmail;
	private String password;
	private String idProof;
	private String idProofNumber;
	private long mobileNumber;
	private String address;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIdProof() {
		return idProof;
	}
	public void setIdProof(String idProof) {
		this.idProof = idProof;
	}
	public String getIdProofNumber() {
		return idProofNumber;
	}
	public void setIdProofNumber(String idProofNumber) {
		this.idProofNumber = idProofNumber;
	}

	public long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Customer(String userName, String userEmail, String password, String idProof, String idProofNumber,
			long mobileNumber, String address) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.password = password;
		this.idProof = idProof;
		this.idProofNumber = idProofNumber;
		this.mobileNumber = mobileNumber;
		this.address = address;
	}
	public Customer() {
		super();
	}
	

}
