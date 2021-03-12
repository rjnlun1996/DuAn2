package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.StatusOrder;

@Repository
public interface StatusOrderRepository extends JpaRepository<StatusOrder, Integer>{
	
	List<StatusOrder> findByEnabledTrue();
	
	List<StatusOrder> findByEnabledTrueAndCurrentTrue();

}
