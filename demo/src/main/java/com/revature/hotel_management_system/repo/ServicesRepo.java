package com.revature.hotel_management_system.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.revature.hotel_management_system.model.Services;

@Repository
public interface ServicesRepo extends CrudRepository<Services, Integer> {
	
	Services findByServiceName(String serviceName);

}
