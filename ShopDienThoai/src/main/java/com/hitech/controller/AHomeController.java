package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;
import com.hitech.services.OrderService;

@Controller
public class AHomeController {
	
	@Autowired
	private OrderService orderService;

	@RequestMapping(ViewConstraint.URL_ADMIN_HOME)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_HOME);		
		String total = orderService.calTotalRevenue("DGH");
		model.addAttribute("total", total);
		return ViewConstraint.VIEW_ADMIN_HOME;
	}
}
