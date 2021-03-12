package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Order;
import com.hitech.services.OrderService;

@Controller
public class AOrderController {
	@Autowired
	private OrderService  orderService;

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		model.addAttribute("listOrder", orderService.findByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER;
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
		model.addAttribute("order", new Order());
		return ViewConstraint.VIEW_ADMIN_ORDER_INSERT;
	}

}
