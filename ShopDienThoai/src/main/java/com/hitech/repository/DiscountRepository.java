package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Discount;

@Repository
public interface DiscountRepository extends JpaRepository<Discount, Integer>{
	
	List<Discount> findByEnabledTrue();
}
