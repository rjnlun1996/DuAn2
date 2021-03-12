package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{
<<<<<<< HEAD
	List<Order> findByEnabledTrue();
=======

	List<Order> findByEnabledTrue();

>>>>>>> branch 'master' of https://github.com/rjnlun1996/DuAn2.git
}
