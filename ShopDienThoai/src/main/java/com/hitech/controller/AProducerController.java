package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AProducerController {

	@RequestMapping(ViewConstraint.URL_ADMIN_PRODUCER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCER);
		return ViewConstraint.VIEW_ADMIN_PRODUCER;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_PRODUCER_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCER_INSERT);
		return ViewConstraint.VIEW_ADMIN_PRODUCER_INSERT;
	}

}