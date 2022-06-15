package com.revature.hotel_management_system.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.revature.hotel_management_system.model.CheckOut;
import com.revature.hotel_management_system.model.RoomBooking;
import com.revature.hotel_management_system.model.Rooms;
import com.revature.hotel_management_system.repo.BillRepo;
import com.revature.hotel_management_system.repo.RoomBookingRepo;
import com.revature.hotel_management_system.repo.RoomsRepo;

@Service
@Transactional
public class CheckOutService {
	@Autowired
	RoomsRepo roomsRepo;
	@Autowired
	RoomBookingRepo roomBookingRepo;
	@Autowired
	BillRepo billRepo;
	
	public void checkOut(CheckOut checkOut) {
		
		System.out.println(checkOut.getRoomNo());
		System.out.println(checkOut.getUserEmail());
		Rooms rooms=roomsRepo.findById(checkOut.getRoomNo()).orElse(null);
		RoomBooking roomBooking=roomBookingRepo.findById(checkOut.getRoomNo()).orElse(null);
		rooms.setRoomStatus("Available");
		roomsRepo.save(rooms);
		System.out.println("hi");
		billRepo.deleteByRoomBooking(roomBooking);
		System.out.println("hi");
		roomBookingRepo.deleteById(roomBooking.getRoomNo());
		System.out.println("hi");
		
	}

}
