package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;
import com.hitech.services.AccountService;

@Controller
public class AAdminController {
	
	@Autowired
	private AccountService accountService; // access modify [public, protected, default, private]
	
	@RequestMapping(ViewConstraint.URL_ADMIN_ADMIN)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN);
		model.addAttribute("list", accountService.findAllAdminByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ADMIN;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_ADMIN_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN_INSERT);
		return ViewConstraint.VIEW_ADMIN_ADMIN_INSERT;
	}
	
}
