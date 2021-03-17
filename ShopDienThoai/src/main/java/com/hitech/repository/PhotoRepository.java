package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Photo;

@Repository
public interface PhotoRepository extends JpaRepository<Photo, Integer>{
	
	@Query("SELECT pt FROM Product p, Photo pt WHERE p.id = pt.product.id AND p.id = ?1")
	List<Photo> findByProduct(int productId);
}
