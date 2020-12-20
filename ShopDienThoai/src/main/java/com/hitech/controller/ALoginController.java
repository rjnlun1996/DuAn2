package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.services.AccountService;

@Controller
@RequestMapping("/ho-admin/login")
public class ALoginController {	
	
	@Autowired
	private AccountService accountService;

	@RequestMapping("")
	public String table(Model model) {
		boolean isValidLogin = accountService.loginAdmin("aquoc@fpt.edu.vn", "aquoc");
		System.out.println(isValidLogin);
		return "admin/login";
	}
}
