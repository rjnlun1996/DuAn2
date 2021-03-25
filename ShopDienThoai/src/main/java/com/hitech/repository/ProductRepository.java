package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	 List<Product> findByEnabledTrue();
	 
	 Product findByName(String name);
	 
	 @Query("SELECT p FROM Product p WHERE p.importPrice  > ?1 AND p.importPrice  < ?2")
	 List<Product> findAllHaveSamePrice(long min, long max);
}
