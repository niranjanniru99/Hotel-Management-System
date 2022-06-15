package com.revature.hotel_management_system.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.revature.hotel_management_system.model.CheckOut;
import com.revature.hotel_management_system.services.CheckOutService;

@RestController
public class CheckOutController {
	
	@Autowired
	CheckOutService checkOutService;
	@GetMapping("/receptionist/checkOut")
	public ModelAndView checkOut() {
		ModelAndView mv=new ModelAndView("check-out.jsp");
		mv.addObject("checkOut",new CheckOut());
		return mv;
		
	}
	@PostMapping("/receptionist/checkOut")
	public ModelAndView checkOut(@ModelAttribute("checkOut") CheckOut checkOut) {
		
		ModelAndView mv=new ModelAndView("check-out.jsp");
		checkOutService.checkOut(checkOut);
		mv.addObject("success",checkOut.getRoomNo()+" checked out successfully");
		return mv;
		
	}

}
