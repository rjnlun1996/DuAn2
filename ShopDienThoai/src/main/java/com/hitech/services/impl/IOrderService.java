package com.hitech.services.impl;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Account;
import com.hitech.entities.Order;
import com.hitech.entities.StatusOrder;
import com.hitech.entities.helper.IReport;
import com.hitech.entities.helper.IReportTotal;
import com.hitech.entities.helper.ITopCustomerBuy;
import com.hitech.entities.helper.ITopSellProduct;
import com.hitech.repository.OrderRepository;
import com.hitech.services.OrderService;
import com.hitech.utils.SessionUtils;

@Service
public class IOrderService implements OrderService {

	@Autowired
	private SessionUtils sessionUtils;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	public List<Order> findAll() {
		return orderRepository.findAll();
	}

	@Override
	public Order findById(Integer id) {
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
			if (od == null) {
				return false;
			}
			od.setEnabled(false);
			orderRepository.saveAndFlush(od);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<Order> findOrderByUsername(String username) {
		return orderRepository.findOrderByUsername(username);
	}

	@Override
	public boolean existsById(int id) {
		return orderRepository.existsById(id);
	}

	@Override
	public String calTotalRevenue(String status) {
		return orderRepository.calTotalRevenue(status);
	}

	@Override
	public String calTotalProductSold(String status) {
		return orderRepository.calTotalProductSold(status);
	}

	@Override
	public String calTotalOrder(String status) {
		return orderRepository.calTotalOrder(status);
	}

	@Override
	public IReportTotal report(Date first, Date last) {
		return orderRepository.report(first, last);
	}

	@Override
	public IReportTotal reportAll() {
		return orderRepository.reportAll();
	}

	@Override
	public List<ITopSellProduct> reportTopSellProduct(Date first, Date last) {
		return orderRepository.reportTopSellProduct(first, last);
	}

	@Override
	public List<ITopSellProduct> reportTopSellProductAll() {
		return orderRepository.reportTopSellProductAll();
	}

	@Override
	public List<ITopCustomerBuy> reportTopSellCustomerAll() {
		return orderRepository.reportTopSellCustomerAll();
	}

	@Override
	public List<ITopCustomerBuy> reportTopSellCustomer(Date first, Date last) {
		return orderRepository.reportTopSellCustomer(first, last);
	}

	@Override
	public List<IReport> report() {
		return orderRepository.report();
	}

	@Override
	public boolean checkExistedForeign(Integer id) {
		Order order = orderRepository.findById(id).orElse(null);

		// Get khoa ngoai (Account)
		Account acc = order.getAccount();
		
		if(acc != null) {
			return true;
		}
		
		// Get Khoa ngoai (product)
		Set<StatusOrder> statusOrder = order.getStatusOrders();

		// Kiểm tra nếu khóa ngoại đang liên kết dự liệu
		if (statusOrder != null && !statusOrder.isEmpty() && statusOrder.size() > 0) {
			return true;
		}
		return false;
	}
}
