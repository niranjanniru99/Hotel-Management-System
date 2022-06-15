package com.revature.hotel_management_system.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.revature.hotel_management_system.model.Bill;
import com.revature.hotel_management_system.model.CheckBill;
import com.revature.hotel_management_system.repo.BillRepo;

@Service
public class CheckBillService {
	
	@Autowired
	BillRepo billRepo;
	@Autowired
	BillService billService;
	
	public List<Bill> checkBill(@RequestParam("checkBill") CheckBill checkBill){
		List<Bill> bill=billService.getBillOfCustomer(checkBill.getCustomerEmail());
		return bill;
	}
	public float countTotalBill(List<Bill> bill) {
		float sum=0;
		for(Bill b:bill) {
			sum+=b.getPrice();
		}
		return sum;
	}

}
