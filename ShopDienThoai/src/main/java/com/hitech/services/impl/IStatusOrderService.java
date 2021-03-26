package com.hitech.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Discount;
import com.hitech.entities.Order;
import com.hitech.entities.Status;
import com.hitech.entities.StatusOrder;
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


	@Override
	public StatusOrder findById(Integer id) {
		return statusOrderRepository.findById(id).orElse(null);
	}

	@Override
	public StatusOrder save(StatusOrder statusOrder) {
		statusOrder.setCurrent(true);
		statusOrder.setCreatedAt(new Date());
		statusOrder.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		transformCurrent(statusOrder);
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
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public boolean deleteByEnabled(Integer id) {
		try {
			StatusOrder statusOrder = statusOrderRepository.getOne(id);
			if (statusOrder == null) {
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
	public List<StatusOrder> findAllByEnabledTrue() {
		return statusOrderRepository.findByEnabledTrue();
	}
	
	@Override
	public List<StatusOrder> findAllByEnabledTrueAndCurrentTrue() {
		List<StatusOrder> list = statusOrderRepository.findDistinctByEnabledTrueAndCurrentTrue();
		return list;
	}

	@Override
	public List<StatusOrder> findAllByOrderIdAndEnabledTrue(Integer orderId) {
		return statusOrderRepository.getStatusOrderByCurrentTrueAndOrderId(orderId);
	}

	private void transformCurrent(StatusOrder sta) {
		if(sta.isCurrent()) {
			List<StatusOrder> stas = statusOrderRepository.getStatusOrderByCurrentTrueAndOrderId(sta.getOrder().getId());
			for(StatusOrder s: stas) {
				s.setCurrent(false);
				statusOrderRepository.saveAndFlush(s);
			}

		}
	}
}
