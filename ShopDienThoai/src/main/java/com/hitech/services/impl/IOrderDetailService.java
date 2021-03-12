package com.hitech.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.OrderDetail;
import com.hitech.repository.OrderDetailRepository;
import com.hitech.services.OrderDetailService;
import com.hitech.utils.SessionUtils;

@Service
public class IOrderDetailService implements OrderDetailService{

	
	@Autowired
	private OrderDetailRepository orderDetailRepository;
	@Autowired
	private SessionUtils sessionUtils;
	
	@Override
	public List<OrderDetail> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderDetail findById(Integer id) {
		// TODO Auto-generated method stub
		return orderDetailRepository.getOne(id);
	}

	@Override
	public OrderDetail save(OrderDetail orderDetail) {
		List<OrderDetail> list = orderDetailRepository.findByOrderIdAndProductId(orderDetail.getOrder().getId(),orderDetail.getProductId());
		if(list.size()>0) {
			int a = list.get(0).getId();
			orderDetail.setId(a);
			orderDetail.setQuantity(orderDetail.getQuantity()+findById(a).getQuantity());
			return update(orderDetail);
		}else {
		orderDetail.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		orderDetail.setCreatedAt(new Date());
		return orderDetailRepository.save(orderDetail);}
	}

	@Override
	public OrderDetail update(OrderDetail orderDetail) {
		orderDetail.setUpdatedBy(sessionUtils.getCreatedOrUpdatedBy());
		orderDetail.setUpdatedAt(new Date());
		return orderDetailRepository.save(orderDetail);
	}

	@Override
	public boolean deleteById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<OrderDetail> findAllByOrderId(int id) {
		return orderDetailRepository.findByOrderIdAndEnabledTrue(id);
	}

	@Override
	public boolean deleteByEnable(Integer id) {
		try {
			OrderDetail od = orderDetailRepository.getOne(id);
			if(od == null) {
				return false;
			}
			od.setEnabled(false);
			orderDetailRepository.saveAndFlush(od);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
