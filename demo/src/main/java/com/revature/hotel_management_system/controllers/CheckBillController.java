package com.revature.hotel_management_system.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.revature.hotel_management_system.model.Bill;
import com.revature.hotel_management_system.model.CheckBill;
import com.revature.hotel_management_system.services.CheckBillService;

@RestController
public class CheckBillController {
	
	@Autowired
	CheckBillService checkBillService;
	
	@GetMapping("/receptionist/checkBill")
	public ModelAndView checkBill() {
		ModelAndView mv=new ModelAndView("check-bill.jsp");
		mv.addObject("checkBill",new CheckBill());
		return mv;
	}
	@PostMapping("/receptionist/checkBill")
	public ModelAndView checkBill(@ModelAttribute("checkBill") CheckBill checkBill) {
		ModelAndView mv=new ModelAndView("display-bill.jsp");
		List<Bill> bill=checkBillService.checkBill(checkBill);
		mv.addObject("bill",bill);
		mv.addObject("total",checkBillService.countTotalBill(bill));
		return mv;
	}

}
