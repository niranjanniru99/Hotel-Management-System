package com.revature.hotel_management_system.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revature.hotel_management_system.model.Roles;
import com.revature.hotel_management_system.repo.RolesRepo;

@Service
public class RolesService {
	
	@Autowired
	RolesRepo rolesRepo;
	
	public void addRole(String emailId, String role) {
		Roles roles=new Roles(emailId,role);
		rolesRepo.save(roles);
	}

}
