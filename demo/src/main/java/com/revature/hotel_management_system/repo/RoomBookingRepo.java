package com.revature.hotel_management_system.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.revature.hotel_management_system.model.RoomBooking;

@Repository
public interface RoomBookingRepo extends CrudRepository<RoomBooking, Integer> {

	RoomBooking findByRoomNo(int roomNo);
}
