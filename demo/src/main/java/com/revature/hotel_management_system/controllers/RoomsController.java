package com.revature.hotel_management_system.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.revature.hotel_management_system.services.RoomsService;

@RestController
public class RoomsController {
	
	@Autowired
	RoomsService roomsService;
	@GetMapping("/receptionist/availableRooms")
	public ModelAndView availableRooms() {
		
		ModelAndView mv=new ModelAndView("available-rooms.jsp");
		mv.addObject("listOfAvailableRooms",roomsService.getAvailableRooms());
		return mv;
		
	}
	@GetMapping("/admin/availableRooms")
	public ModelAndView adminAvailableRooms() {
		
		ModelAndView mv=new ModelAndView("available-rooms.jsp");
		mv.addObject("listOfAvailableRooms",roomsService.getAvailableRooms());
		return mv;
		
	}

}
