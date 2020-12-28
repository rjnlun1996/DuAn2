package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	 List<Product> findByEnabledTrue();
	 
	 @Modifying
	 @Query("update Product p set p.enabled=false where p.id= ?1")
	 void setEnabledFalse(int id);
}
