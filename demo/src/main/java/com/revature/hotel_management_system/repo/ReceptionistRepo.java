package com.revature.hotel_management_system.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.revature.hotel_management_system.model.ReceptionistLogIn;

@Repository
public interface ReceptionistRepo extends CrudRepository<ReceptionistLogIn, String> {

}
