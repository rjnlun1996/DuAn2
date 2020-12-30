package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.services.AccountService;

@Controller
public class AAdminController {
	
	@Autowired
	private AccountService accountService; // access modify [public, protected, default, private]
	
	@GetMapping(ViewConstraint.URL_ADMIN_ADMIN)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN);
		model.addAttribute("list", accountService.findAllAdminByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ADMIN;
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_ADMIN_INSERT)
	public String insertGet(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN_INSERT);
		model.addAttribute("account", new Account());
		return ViewConstraint.VIEW_ADMIN_ADMIN_INSERT;
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_ADMIN_INSERT)
	public String insertPost(Model model, @ModelAttribute Account account) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN_INSERT);
		accountService.save(account);
		return ViewConstraint.VIEW_ADMIN_ADMIN_INSERT;
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_ADMIN_DELETE)
	public String delete(Model model, @RequestParam String username) {
		accountService.deleteById(username);
		return "redirect:/ho-admin/admin/";
	}
	
	// @ModelAttribute <input path=""/> 
	// 1. /ho-admin/admin/insert method get (controller => new Account())
	
	// Front End: Ajax $.ajax(); include: javascript basis
	// Manual: thu3 cong.
	
	
	//1. access to /ho-admin/admin/insert
	//2. 
	
}
