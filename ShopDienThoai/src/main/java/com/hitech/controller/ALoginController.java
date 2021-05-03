package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitech.constraints.ViewConstraint;
import com.hitech.services.AccountService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.StringUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class ALoginController {	
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private SessionUtils sessionUtils;

	@GetMapping(ViewConstraint.URL_ADMIN_LOGIN)
	public String table(Model model) {
		return ViewConstraint.VIEW_ADMIN_LOGIN;
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_LOGIN)
	public String insert(Model model, @RequestParam String username, @RequestParam String password) {
		boolean isValidLogin = accountService.loginAdmin(username, password);
		if(!isValidLogin) {
			model.addAttribute("isValidLogin", isValidLogin);
			model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
			return ViewConstraint.VIEW_ADMIN_LOGIN;
		}		
		
		if(sessionUtils.getUser().getLevel() == 1) {
			return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_CUSTOMER);	
		}
		
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_HOME);		
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_LOGOUT)
	public String logout() {
		sessionUtils.destroyAll();
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_LOGIN);
	}
}
