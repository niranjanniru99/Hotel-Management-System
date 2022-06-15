package com.revature.hotel_management_system.controllers;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.revature.hotel_management_system.model.ReceptionistLogIn;
import com.revature.hotel_management_system.services.ReceptionistLogInService;

@RestController
public class ReceptionistLogInController {
	
	@Autowired
	private ReceptionistLogInService receptionistLogInService;
	
	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView("login.jsp");
		//mv.addObject("receptionistLogIn",new ReceptionistLogIn());
		return mv;
	}
	
	@PostMapping("/receptionist/dashboard")
	public ModelAndView dashboard() {
		
//		ReceptionistLogIn receptionistLogIn=new ReceptionistLogIn();
//		receptionistLogIn.setEmailId(emailId);
//		receptionistLogIn.setPassword(password);
		
		ModelAndView mv=new ModelAndView("/receptionist/dashboard");
//		ReceptionistLogIn receptionistLogInThis=receptionistLogInService.logIn(receptionistLogIn);
		//if(Objects.nonNull(receptionistLogInThis) && receptionistLogIn.getPassword().equals(receptionistLogInThis.getPassword())) {
			
			//mv.addObject("rname",receptionistLogInThis.getName());
		//}
//		else {
//			mv=new ModelAndView("login.jsp");
//			mv.addObject("wrong_credentials","Wrong Credentials");
//		}
		return mv;
	}

}
