package com.revature.hotel_management_system.services;



import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.revature.hotel_management_system.model.Customer;
import com.revature.hotel_management_system.repo.CustomerRepo;

@Service
public class AddCustomerService {

	@Autowired
	private CustomerRepo customerRepo;
	@Autowired
	private RolesService rolesService;
	
	public boolean addCustomer(@RequestParam("customer") Customer customer) {
		
		Customer findCustomer=customerRepo.findById(customer.getUserEmail()).orElse(null);
		if(Objects.nonNull(findCustomer))
			return false;
		else {
		customer.setPassword(BCrypt.hashpw(customer.getPassword(), BCrypt.gensalt()));
		customerRepo.save(customer);
		rolesService.addRole(customer.getUserEmail(), "CUSTOMER");
		return true;
		}
		
	}
	
}
