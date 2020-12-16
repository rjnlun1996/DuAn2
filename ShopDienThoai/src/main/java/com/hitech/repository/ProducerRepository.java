package com.hitech.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Producer;

@Repository
public interface ProducerRepository extends JpaRepository<Producer, Integer>{

}
