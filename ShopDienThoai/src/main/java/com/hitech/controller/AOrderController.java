package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AOrderController {

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		return ViewConstraint.VIEW_ADMIN_ORDER;
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
		return ViewConstraint.VIEW_ADMIN_ORDER_INSERT;
	}
	
//	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_SEARCH)
//	public Object search(@RequestParam )

}
