package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class ACustomerController {

	@RequestMapping(ViewConstraint.URL_ADMIN_CUSTOMER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CUSTOMER);
		return ViewConstraint.VIEW_ADMIN_CUSTOMER;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_CUSTOMER_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CUSTOMER_INSERT);
		return ViewConstraint.VIEW_ADMIN_CUSTOMER_INSERT;
	}
}
