package com.revature.hotel_management_system.services;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.revature.hotel_management_system.model.Bill;
import com.revature.hotel_management_system.model.Customer;
import com.revature.hotel_management_system.model.RoomBooking;
import com.revature.hotel_management_system.model.Rooms;
import com.revature.hotel_management_system.repo.CustomerRepo;
import com.revature.hotel_management_system.repo.RoomBookingRepo;
import com.revature.hotel_management_system.repo.RoomsRepo;
import com.revature.hotel_management_system.repo.ServicesRepo;

@Service
public class RoomBookingService {
	
	@Autowired
	RoomBookingRepo roomBookingRepo;
	@Autowired
	RoomsRepo roomsRepo;
	@Autowired
	CustomerRepo customerRepo;
	@Autowired
	BillService billService;
	@Autowired
	ServicesRepo servicesRepo;
	
	public boolean bookRoom(@RequestParam("roomBooking") RoomBooking roomBooking) {
		Rooms rooms=roomsRepo.findById(roomBooking.getRoomNo()).orElse(null);
		if(Objects.nonNull(rooms)&&rooms.getRoomStatus().equals("Available")) {
			roomBookingRepo.save(roomBooking);
			rooms.setRoomStatus("Booked");
			roomsRepo.save(rooms);
			return true;
		}
		else
			return false;
		
	}
	public boolean isCustomerExist(String email) {
		Customer customer=customerRepo.findById(email).orElse(null);
		if(Objects.nonNull(customer))
			return true;
		else
			return false;
	}
	public void saveBill(RoomBooking roomBooking) {
		Customer customer=customerRepo.findById(roomBooking.getEmail()).orElse(null);
		Rooms rooms=roomsRepo.findById(roomBooking.getRoomNo()).orElse(null);
		Bill bill=new Bill(roomBooking,roomBooking.getEmail(),customer.getUserName(),roomBooking.getTypeOfRoom(),rooms.getPrice());
		billService.addBill(bill);
		String service =roomBooking.getServices();
		if(Objects.nonNull(service) && !service.equals("Select")) {
			Bill bill2=new Bill(roomBooking,roomBooking.getEmail(),customer.getUserName(),service,servicesRepo.findByServiceName(service).getPrice());
			billService.addBill(bill2);
		}
	}
}
