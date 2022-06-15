package com.revature.hotel_management_system.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revature.hotel_management_system.model.Customer;
import com.revature.hotel_management_system.repo.CustomerRepo;

@Service
public class CustomerService {
	
	@Autowired
	CustomerRepo customerRepo;
	
	public List<Customer> showAllCustomers(){
		List<Customer> customers=(List<Customer>) customerRepo.findAll();
		System.out.println(customers);
		return customers;
	}

}
