package com.hitech.controller.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hitech.constraints.CViewConstraint;
import com.hitech.services.AccountService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class LoginController {

	@Autowired
	private AccountService accountService;

	@Autowired
	private SessionUtils sessionUtils;


	@GetMapping(CViewConstraint.URL_LOGIN)
	public String table(Model model) {
		return CViewConstraint.VIEW_LOGIN;
	}
	
	@PostMapping(CViewConstraint.URL_LOGIN_CHECK)
	@ResponseBody
	public Integer checkLogin(Model model) {
		if(sessionUtils.isCustomerLogin()) {
			return 1;
		}
		return 0;
	}

	@PostMapping(CViewConstraint.URL_LOGIN)
	public String insert(Model model, @RequestParam String username, @RequestParam String password) {
		boolean isValidLogin = accountService.loginCustomer(username, password);
		if (!isValidLogin) {
			model.addAttribute("isValidLogin", isValidLogin);
			model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
			return CViewConstraint.VIEW_LOGIN;
		}
		return ViewUtils.redirectTo(CViewConstraint.URL_HOME);

	}
	
	@GetMapping(CViewConstraint.URL_LOGIN_NAV)
	public String loginNavGet(Model model) {
		return CViewConstraint.VIEW_LOGIN_NAV;
	}

	@PostMapping(CViewConstraint.URL_LOGIN_NAV)
	public String loginNavPost(Model model, @RequestParam String username, @RequestParam String password) {
		boolean isValidLogin = accountService.loginCustomer(username, password);
		if (!isValidLogin) {
			model.addAttribute("isValidLogin", isValidLogin);
			model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
			return CViewConstraint.VIEW_LOGIN_NAV;
		}
		return ViewUtils.redirectTo(CViewConstraint.URL_HOME);

	}

	@GetMapping(CViewConstraint.URL_LOGOUT)
	public String logout() {
		sessionUtils.destroyAll();
		return ViewUtils.redirectTo(CViewConstraint.URL_LOGIN);
	}

}
