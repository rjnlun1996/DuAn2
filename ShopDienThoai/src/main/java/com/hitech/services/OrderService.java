package com.hitech.services;

import java.util.List;

import com.hitech.entities.Order;

public interface OrderService extends IBaseService<Order, Integer>{
<<<<<<< HEAD
	List<Order> findByEnabledTrue();
	boolean deleteByEnable(Integer id);
=======
	
	List<Order> findAllByEnabledTrue();

>>>>>>> branch 'master' of https://github.com/rjnlun1996/DuAn2.git
}
