package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.hitech.entities.Status;

@Repository
public interface StatusRepository extends JpaRepository<Status, String>{

	
	List<Status> findByEnabledTrue();
}
