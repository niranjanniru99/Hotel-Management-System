package com.revature.hotel_management_system.login_config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.revature.hotel_management_system.model.AdminLogin;
import com.revature.hotel_management_system.model.Customer;
import com.revature.hotel_management_system.model.ReceptionistLogIn;
import com.revature.hotel_management_system.model.Roles;
import com.revature.hotel_management_system.repo.AdminRepo;
import com.revature.hotel_management_system.repo.CustomerRepo;
import com.revature.hotel_management_system.repo.ReceptionistRepo;
import com.revature.hotel_management_system.repo.RolesRepo;

@Service
public class ReceptionistUserDetailsService implements UserDetailsService {
	
	@Autowired
	ReceptionistRepo receptionistRepo;
	
	@Autowired
	RolesRepo rolesRepo;
	
	@Autowired
	AdminRepo adminRepo;
	
	@Autowired
	CustomerRepo customerRepo;

	
	@Override
	public UserDetails loadUserByUsername(String emailId) throws UsernameNotFoundException {
		
		//ReceptionistLogIn receptionist=receptionistRepo.findById(emailId).orElse(null);
		Roles roles=rolesRepo.findById(emailId).orElse(null);
		System.out.println(emailId);
		UserDetails user=null;
		if(roles==null) {
			throw new UsernameNotFoundException("User Not Found");
		}
		else if(roles.getRole().equalsIgnoreCase("ADMIN")) {
			
			AdminLogin admin=adminRepo.findById(emailId).orElse(null);
			if(admin==null)
				throw new UsernameNotFoundException("User Not Found");
		user = User.withUsername(admin.getEmailId()).password(admin.getPassword()).authorities("ADMIN").roles("ADMIN").build();
			
		}
		else if(roles.getRole().equalsIgnoreCase("RECEPTIONIST")) {
		
			ReceptionistLogIn receptionist=receptionistRepo.findById(emailId).orElse(null);
			if(receptionist==null)
				throw new UsernameNotFoundException("User Not Found");
			user=User.withUsername(receptionist.getEmailId()).password(receptionist.getPassword()).authorities("RECEPTIONIST").roles("RECEPTIONIST").build();
		
		}
		else if(roles.getRole().equalsIgnoreCase("CUSTOMER")) {
			
			Customer customer=customerRepo.findById(emailId).orElse(null);
			if(customer==null)
				throw new UsernameNotFoundException("User Not Found");
			user=User.withUsername(customer.getUserEmail()).password(customer.getPassword()).authorities("CUSTOMER").roles("CUSTOMER").build();
		
		}
		return user;
		
	}

}
