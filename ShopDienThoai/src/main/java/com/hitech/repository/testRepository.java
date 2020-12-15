package com.hitech.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Product;

@Repository
public interface testRepository extends JpaRepository<Product, Integer>{

}
