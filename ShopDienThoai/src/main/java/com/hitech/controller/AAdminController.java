package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AAdminController {
	
	@RequestMapping(ViewConstraint.URL_ADMIN_ADMIN)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN);
		return ViewConstraint.VIEW_ADMIN_ADMIN;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_ADMIN_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN_INSERT);
		return ViewConstraint.VIEW_ADMIN_ADMIN_INSERT;
	}
}
/* ấdasdasdasd */