package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Producer;

@Repository
public interface ProducerRepository extends JpaRepository<Producer, String>{
	
	List<Producer> findByEnabledTrue();

}
