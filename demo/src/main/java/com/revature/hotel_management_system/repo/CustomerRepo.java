package com.revature.hotel_management_system.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.revature.hotel_management_system.model.Customer;

@Repository
public interface CustomerRepo extends CrudRepository<Customer, String> {
	
	Customer findByUserEmail(String userEmail);

}
