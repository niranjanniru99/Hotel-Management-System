package com.revature.hotel_management_system.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.revature.hotel_management_system.model.Customer;
import com.revature.hotel_management_system.services.AddCustomerService;

@RestController
public class AddCustomerController {
	
	@Autowired
	AddCustomerService addCustomerService;
	
	@GetMapping("/receptionist/addCustomer")
	public ModelAndView addCustomer() {
		ModelAndView mv=new ModelAndView("add-customer.jsp");
		mv.addObject("customer",new Customer());
		return mv;
	}
	
	@PostMapping("/receptionist/addCustomer")
	public ModelAndView addCustomer(@ModelAttribute("customer") Customer customer) {
		ModelAndView mv=new ModelAndView("add-customer.jsp");
		if(addCustomerService.addCustomer(customer))
			mv.addObject("success","Successfully Registered");
		else
			mv.addObject("failed","The Email is Already Exist");
		return mv;
		
		
	}

}
