package com.hitech.controller.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	@GetMapping(CViewConstraint.URL_LOGOUT)
	public String logout() {
		sessionUtils.destroyAll();
		return ViewUtils.redirectTo(CViewConstraint.URL_LOGOUT);
	}

}
