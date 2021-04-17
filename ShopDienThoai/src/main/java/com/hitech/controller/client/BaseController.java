package com.hitech.controller.client;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.hitech.entities.Order;
import com.hitech.entities.OrderDetail;
import com.hitech.entities.Producer;
import com.hitech.services.DiscountService;
import com.hitech.services.OrderService;
import com.hitech.services.ProducerService;
import com.hitech.utils.SessionUtils;

public class BaseController {
	
	@Autowired
	public ProducerService producerService;
	
	@Autowired
	private SessionUtils sessionUtils;

	@Autowired
	private OrderService orderSerivce;

	@Autowired
	private DiscountService discountService;
	
	@ModelAttribute(name = "producers")
	public List<Producer> categories(){
		return producerService.findAllByEnabledTrue();
	}
	
	@ModelAttribute(name = "processing")
	public int numberOfCartProcess() {
		if(sessionUtils.getUser() == null) {
			return 0;
		}		
		List<Order> orders = orderSerivce.findOrderByUsername(sessionUtils.getUser().getUsername());

		List<Order> ordersUpdated = orders.stream().map(e -> {
			Set<OrderDetail> od = e.getOrderDetails().stream().map(o -> {
				o.setDiscount(discountService.findById(o.getDiscountId()));
				return o;
			}).distinct().collect(Collectors.toSet());
			e.setOrderDetails(od);
			return e;
		}).collect(Collectors.toList());

		List<Order> ordered = ordersUpdated.stream().filter(o -> !o.getStatusOrders().stream().anyMatch(s -> {
			return s.isCurrent() && s.isEnabled() && s.getStatus().getPriority() == 4
					|| s.isCurrent() && s.isEnabled() && s.getStatus().getPriority() == 5;
		})).collect(Collectors.toList());
		
		return ordered.size();
	}
}
