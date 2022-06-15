package com.revature.hotel_management_system.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revature.hotel_management_system.model.RoomBooking;
import com.revature.hotel_management_system.repo.RoomBookingRepo;

@Service
public class BookingInfoService {
	
	@Autowired
	RoomBookingRepo roomBookingRepo;
	public List<RoomBooking> getRoomBookingInfo() {
		
		List<RoomBooking> roomBooking=(List<RoomBooking>) roomBookingRepo.findAll();
		return roomBooking;
		
	}

}
