package com.hitech.controller;

import java.io.IOException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.services.AccountService;
import com.hitech.services.EmailService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.StringUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class AAuthController {

	@Autowired
	private AccountService accountService; // access modify [public, protected, default, private]

	@Autowired
	private SessionUtils sessionUtils;
	
	@Autowired
	private EmailService emailService;

	@GetMapping(ViewConstraint.URL_ADMIN_CHANGE_PASSWORD)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CHANGE_PASSWORD);
		return ViewConstraint.VIEW_ADMIN_CHANGE_PASSWORD;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_CHANGE_PASSWORD)
	public String updatePost(Model model, @RequestParam String oldPassword, @RequestParam String newPassword,
			@RequestParam String rePassword, RedirectAttributes reAttributes) throws IOException {

		// kiem tra match 2 new password
		if (!newPassword.equals(rePassword)) {
			model.addAttribute("error", "Mật khẩu mới không khớp nhau!");
			return ViewConstraint.VIEW_ADMIN_CHANGE_PASSWORD;
		}

		// old password on db
		if (!oldPassword.equals(sessionUtils.getUser().getPassword())) {
			model.addAttribute("error", "Mật khẩu cũ không đúng!");
			return ViewConstraint.VIEW_ADMIN_CHANGE_PASSWORD;
		}

		// update db
		Account accountOnDb = sessionUtils.getUser();
		accountOnDb.setPassword(newPassword);
		Account accountUpdated = accountService.update(accountOnDb);
		
		//send email sau khi cập nhật
		emailService.sendNotifyChangePassword(accountOnDb.getEmail());
		
		//cập nhật lại session
		sessionUtils.setUser(accountUpdated);
		reAttributes.addFlashAttribute("message",
				"Cập nhật tài khoản " + sessionUtils.getUser().getUsername() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_CHANGE_PASSWORD);
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_FORGET_PASSWORD)
	public String forgetPasswordGet(Model model) {
		return ViewConstraint.VIEW_ADMIN_FORGET_PASSWORD;
	}
	
	
	@PostMapping(ViewConstraint.URL_ADMIN_FORGET_PASSWORD)
	public String forgetPassword(Model model, @RequestParam String email) {
		
		Account account = accountService.findByEmail(email);
		if(account == null) {
			model.addAttribute("error", "Email không tồn tại!");
			return ViewConstraint.VIEW_ADMIN_FORGET_PASSWORD;
		}
		
		String newPassword = StringUtils.generatorPassword();
		account.setPassword(newPassword);
		accountService.update(account);
		emailService.sendNotifyForgotPassword(account.getEmail());
		return ViewConstraint.VIEW_ADMIN_FORGET_PASSWORD;
	}

}
