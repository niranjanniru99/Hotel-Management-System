package com.revature.hotel_management_system.services;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.revature.hotel_management_system.model.AddServices;
import com.revature.hotel_management_system.model.Bill;
import com.revature.hotel_management_system.model.Customer;
import com.revature.hotel_management_system.model.RoomBooking;
import com.revature.hotel_management_system.model.Services;
import com.revature.hotel_management_system.repo.BillRepo;
import com.revature.hotel_management_system.repo.CustomerRepo;
import com.revature.hotel_management_system.repo.RoomBookingRepo;
import com.revature.hotel_management_system.repo.ServicesRepo;

@Service
public class AddServicesService {
	
	@Autowired
	BillRepo billRepo;
	@Autowired
	RoomBookingRepo roomBookingRepo;
	@Autowired
	ServicesRepo servicesRepo;
	@Autowired
	BillService billService;
	@Autowired
	CustomerRepo customerRepo;
	
	public boolean addServices(@RequestParam("addService") AddServices addServices) {
		
		RoomBooking roomBooking=roomBookingRepo.findByRoomNo(addServices.getRoomNo());
		Services services=servicesRepo.findByServiceName(addServices.getServiceName());
		if(Objects.nonNull(roomBooking)) {
		Customer customer=customerRepo.findByUserEmail(roomBooking.getEmail());
		if(Objects.nonNull(customer)&&Objects.nonNull(services)) {
		Bill bill=new Bill(roomBooking,roomBooking.getEmail(), customer.getUserName() ,services.getServiceName(),services.getPrice());
		billService.addBill(bill);
		return true;
		}
		}
		return false;
		
	}

}
