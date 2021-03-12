package com.hitech.services.impl;

<<<<<<< HEAD
import java.util.Date;
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
	private SessionUtils sessionUtils;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	public List<Order> findAll(){
		return orderRepository.findAll();
	}

	@Override
	public Order findById(Integer id) {
		// TODO Auto-generated method stub
		return orderRepository.getOne(id);
	}

	@Override
	public Order save(Order order) {
		order.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		order.setCreatedAt(new Date());
		return orderRepository.save(order);
	}

	@Override
	public Order update(Order order) {
		order.setUpdatedBy(sessionUtils.getCreatedOrUpdatedBy());
		order.setUpdatedAt(new Date());
		return orderRepository.save(order);
	}

	@Override
	public boolean deleteById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Order> findByEnabledTrue() {
		return orderRepository.findByEnabledTrue();
	}

	@Override
	public boolean deleteByEnable(Integer id) {
		try {
			Order od = orderRepository.getOne(id);
			if(od == null) {
				return false;
			}
			od.setEnabled(false);
			orderRepository.saveAndFlush(od);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
=======
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



	
>>>>>>> branch 'master' of https://github.com/rjnlun1996/DuAn2.git
}
