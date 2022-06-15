package com.revature.hotel_management_system.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.revature.hotel_management_system.model.AddServices;

@Repository
public interface AddServicesRepo extends CrudRepository<AddServices, Integer> {

	
}
