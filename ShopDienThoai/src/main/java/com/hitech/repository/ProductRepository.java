package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	 List<Product> findByEnabledTrue();
	 Product findByName(String name);
}
