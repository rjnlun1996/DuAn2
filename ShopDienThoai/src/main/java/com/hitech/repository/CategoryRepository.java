package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Account;
import com.hitech.entities.Category;

@Repository // DAO
public interface CategoryRepository extends JpaRepository<Category, Integer> {
	
	/**
	 * phương thức để lấy tất cả category có thuộc tính Enabled = true
	 * @return
	 */
	List<Category> findByEnabledTrue();
	
	Category findByNameAndEnabledTrue(String name);
	
	
	
}
