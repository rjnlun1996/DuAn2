package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Discount;

@Repository
public interface DiscountRepository extends JpaRepository<Discount, Integer>{
	
	List<Discount> findByEnabledTrue();
	
	@Query("SELECT d FROM Discount d, Product p WHERE p.id = d.product.id AND d.current = 1 AND d.product.id = ?1")
	List<Discount> getDiscountByCurrentTrueAndProductId(int id);
	
}
