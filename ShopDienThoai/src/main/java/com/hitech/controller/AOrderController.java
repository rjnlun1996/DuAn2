package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AOrderController {

	@RequestMapping(ViewConstraint.URL_ADMIN_ORDER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		return ViewConstraint.VIEW_ADMIN_ORDER;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
		return ViewConstraint.VIEW_ADMIN_ORDER_INSERT;
	}

}
