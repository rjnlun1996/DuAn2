package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AProductController {

	@RequestMapping(ViewConstraint.URL_ADMIN_PRODUCT)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT);
		return ViewConstraint.VIEW_ADMIN_PRODUCT;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_PRODUCT_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT_INSERT);
		return ViewConstraint.VIEW_ADMIN_PRODUCT_INSERT;
	}

}
