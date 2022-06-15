package com.revature.hotel_management_system.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.revature.hotel_management_system.services.CustomerService;
import com.revature.hotel_management_system.services.ReceptionistLogInService;

@RestController
public class ShowAllReceptionistsController {
	
	@Autowired
	ReceptionistLogInService receptionistLogInService;
	
	@GetMapping("/admin/showAllReceptionists")
	public ModelAndView showAllCustomers() {
		
		ModelAndView mv=new ModelAndView("/admin/showAllReceptionists.jsp");
		mv.addObject("allReceptionists",receptionistLogInService.showAllReceptionists());
		return mv;
		
	}

}
