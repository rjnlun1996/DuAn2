package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Producer;

@Repository
public interface ProducerRepository extends JpaRepository<Producer, String>{
	
	List<Producer> findByEnabledTrueOrderByCreatedAtAsc();
	
	Producer findByIdIgnoreCase(String id);
	
	Producer findByNameIgnoreCase(String name);
	
	Producer findByEmail(String email);

}
