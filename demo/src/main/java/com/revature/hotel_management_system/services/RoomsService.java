package com.revature.hotel_management_system.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revature.hotel_management_system.model.Rooms;
import com.revature.hotel_management_system.repo.RoomsRepo;

@Service
public class RoomsService {

	@Autowired
	RoomsRepo roomsRepo;
	public List<Rooms> getAvailableRooms() {
		List<Rooms> rooms=(List<Rooms>) roomsRepo.findAll();
		return rooms;
		
	}
	
}
