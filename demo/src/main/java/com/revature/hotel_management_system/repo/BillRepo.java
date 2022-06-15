package com.revature.hotel_management_system.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.revature.hotel_management_system.model.Bill;
import com.revature.hotel_management_system.model.RoomBooking;


@Repository
public interface BillRepo extends CrudRepository<Bill, Integer> {
	
	List<Bill> findByCustomerEmail(String customerEmail);
	void deleteByRoomBooking(RoomBooking roomBooking);

}
