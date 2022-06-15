package com.revature.hotel_management_system.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.revature.hotel_management_system.model.AdminLogin;

@Repository
public interface AdminRepo extends CrudRepository<AdminLogin, String> {

	

}
