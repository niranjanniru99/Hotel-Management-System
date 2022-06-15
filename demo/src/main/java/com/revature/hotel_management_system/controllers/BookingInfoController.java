package com.revature.hotel_management_system.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.revature.hotel_management_system.services.BookingInfoService;
import com.revature.hotel_management_system.services.RoomBookingService;

@RestController
public class BookingInfoController {
	@Autowired
	BookingInfoService bookingInfoService;
	@GetMapping("/receptionist/bookingInfo")
	public ModelAndView bookingInfo() {
		ModelAndView mv=new ModelAndView("booking-info.jsp");
		mv.addObject("bookingInfo",bookingInfoService.getRoomBookingInfo());
		return mv;
	}

}
