package com.hitech.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Status;

@Repository
public interface StatusRepository extends JpaRepository<Status, String>{

}
