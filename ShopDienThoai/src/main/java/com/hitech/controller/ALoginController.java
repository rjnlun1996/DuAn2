package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitech.constraints.ViewConstraint;
import com.hitech.services.AccountService;

@Controller
public class ALoginController {	
	
	@Autowired
	private AccountService accountService;

	@GetMapping(ViewConstraint.URL_ADMIN_LOGIN)
	public String table(Model model) {
		return ViewConstraint.VIEW_ADMIN_LOGIN;
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_LOGIN)
	public String insert(Model model, @RequestParam String username, @RequestParam String password) {
		boolean isValidLogin = accountService.loginAdmin(username, password);
		System.out.println(isValidLogin);
		if(!isValidLogin) {
			model.addAttribute("isValidLogin", isValidLogin);
			model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
			return ViewConstraint.VIEW_ADMIN_LOGIN;
		}		
		return "redirect:/ho-admin/";
		
	}
}
