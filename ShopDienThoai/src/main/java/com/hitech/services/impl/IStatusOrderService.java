package com.hitech.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Account;
import com.hitech.entities.Order;
import com.hitech.entities.Status;
import com.hitech.entities.StatusOrder;
import com.hitech.repository.AccountRepository;
import com.hitech.repository.OrderRepository;
import com.hitech.repository.StatusOrderRepository;
import com.hitech.repository.StatusRepository;
import com.hitech.services.StatusOrderService;
import com.hitech.utils.SessionUtils;

@Service
public class IStatusOrderService implements StatusOrderService {
	

	
	@Autowired
	private SessionUtils sessionUtils;
	
	@Autowired
	private StatusOrderRepository statusOrderRepository;
 
	@Autowired
	private StatusRepository statusRepository;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Override
	public StatusOrder findById(Integer id) {
	
		return statusOrderRepository.findById(id).orElse(null);
	}

	@Override
	public StatusOrder save(StatusOrder statusOrder) {
		Status sta = statusRepository.getOne(statusOrder.getStatus().getId());
		statusOrder.setStatus(sta);
		
		statusOrder.setCreatedAt(new Date());
		statusOrder.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		return statusOrderRepository.save(statusOrder);
	}

	@Override
	public StatusOrder update(StatusOrder statusOrder) {
		
		return statusOrderRepository.saveAndFlush(statusOrder);
	}

	@Override
	public boolean deleteById(Integer id) {
		try {
			statusOrderRepository.deleteById(id);
			return true;
		}
		catch(Exception e){
			return false;
		}
		
	}

	@Override
	public boolean deleteByEnabled(Integer id) {
		try {
			StatusOrder statusOrder = statusOrderRepository.getOne(id);
			if(statusOrder == null) {
				return false;
			}
			statusOrder.setEnabled(false);
			statusOrderRepository.saveAndFlush(statusOrder);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<StatusOrder> findAll() {
		
		return statusOrderRepository.findAll();
	}

	@Override
	public List<StatusOrder> findAllStatusOrderByEnabledTrue() {
		
		return statusOrderRepository.findByEnabledTrue();
	}

	
   

}
