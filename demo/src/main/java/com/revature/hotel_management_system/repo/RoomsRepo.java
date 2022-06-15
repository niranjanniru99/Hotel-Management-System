package com.revature.hotel_management_system.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.revature.hotel_management_system.model.Rooms;

@Repository
public interface RoomsRepo extends CrudRepository<Rooms, Integer> {
	
}
