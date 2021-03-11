package com.hitech.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Order;
import com.hitech.repository.OrderRepository;
import com.hitech.services.OrderService;
import com.hitech.utils.SessionUtils;

@Service
public class IOrderService implements OrderService{
		
	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private SessionUtils sessionUtils;

	@Override
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Order findById(Integer id) {
		// TODO Auto-generated method stub
		return orderRepository.getOne(id);
	}

	@Override
	public Order save(Order entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Order update(Order entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Order> findAllByEnabledTrue() {
		return orderRepository.findByEnabledTrue();
	}



	
}
