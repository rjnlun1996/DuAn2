package com.hitech.controller.client;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.CViewConstraint;
import com.hitech.entities.Account;
import com.hitech.services.AccountService;
import com.hitech.services.EmailService;
import com.hitech.services.FileStorageService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.StringUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class AuthController {

	@Autowired
	private AccountService accountService;
	
	@Autowired
	private FileStorageService fileStorageService;

	@Autowired
	private SessionUtils sessionUtils;

	@Autowired
	private EmailService emailService;


	@GetMapping(CViewConstraint.URL_REGISTER)
	public String registerGet(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_REGISTER);
		model.addAttribute("register", new Account());
		return CViewConstraint.VIEW_REGISTER;
	}

	@PostMapping(CViewConstraint.URL_REGISTER)
	public String insertPost(@Validated @ModelAttribute("register") Account account, BindingResult errors,
			RedirectAttributes reAttributes, Model model) throws IOException {
		System.err.println(accountService.findById(account.getUsername()));
		
		boolean isExistedUsername = accountService.findById(account.getUsername()) != null;
		boolean isExistedEmail = accountService.findByEmail(account.getEmail()) != null;
		boolean isErrors = errors.hasErrors();
		System.err.println(isExistedUsername);
		if (isErrors || isExistedUsername || isExistedEmail) {
			if (isErrors) {
				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			}
			if (isExistedUsername) {
				model.addAttribute("errorUsername", "Username này đã tồn tại");
				model.addAttribute("isExistUsername", true);
			}
			if (isExistedEmail) {
				model.addAttribute("errorEmail", "Email này đã tồn tại");
				model.addAttribute("isExistEmail", true);
			}
			model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_REGISTER);
			return CViewConstraint.VIEW_REGISTER;
		}
		account.setLevel(2);
//		account.setAddress(null);
//		account.setPhone("0000000000");
		accountService.save(account);
		reAttributes.addFlashAttribute("message", "Tạo tài khoản " + account.getUsername() + " thành công!");
		return ViewUtils.redirectTo(CViewConstraint.URL_HOME);
	}

	@GetMapping(CViewConstraint.URL_FORGET_PASSWORD)
	public String forgetPassGet(Model model) {
		return CViewConstraint.VIEW_FORGET_PASSWORD;
	}

	@PostMapping(CViewConstraint.URL_FORGET_PASSWORD)
	public String forgetPassPost(Model model, @RequestParam String email) {

		Account account = accountService.findByEmail(email);
		if (account == null) {
			model.addAttribute("error", "Email không tồn tại!");
			return CViewConstraint.VIEW_FORGET_PASSWORD;
		}

		String newPassword = StringUtils.generatorPassword();
		account.setPassword(newPassword);
		accountService.update(account);
		emailService.sendNotifyForgotPassword(account.getEmail());
		return CViewConstraint.VIEW_FORGET_PASSWORD;
	}

	@GetMapping(CViewConstraint.URL_CHANGE_PASSWORD)
	public String ChangePassGet(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_CHANGE_PASSWORD);
		return CViewConstraint.VIEW_CHANGE_PASSWORD;
	}

	@PostMapping(CViewConstraint.URL_CHANGE_PASSWORD)
	public String ChangePassPost(Model model, @RequestParam String oldPassword, @RequestParam String newPassword,
			@RequestParam String rePassword, RedirectAttributes reAttributes) throws IOException {

		// kiem tra match 2 new password
		if (!newPassword.equals(rePassword)) {
			model.addAttribute("error", "Mật khẩu mới không khớp nhau!");
			return CViewConstraint.VIEW_CHANGE_PASSWORD;
		}

		// old password on db
		if (!oldPassword.equals(sessionUtils.getUser().getPassword())) {
			model.addAttribute("error", "Mật khẩu cũ không đúng!");
			return CViewConstraint.VIEW_CHANGE_PASSWORD;
		}

		// update db
		Account accountOnDb = sessionUtils.getUser();
		accountOnDb.setPassword(newPassword);
		Account accountUpdated = accountService.update(accountOnDb);

		// send email sau khi cập nhật
		emailService.sendNotifyChangePassword(accountOnDb.getEmail());

		// cập nhật lại session
		sessionUtils.setUser(accountUpdated);
		reAttributes.addFlashAttribute("message",
				"Cập nhật tài khoản " + sessionUtils.getUser().getUsername() + " thành công!");
		return ViewUtils.redirectTo(CViewConstraint.URL_CHANGE_PASSWORD);
	}
	
	@GetMapping(CViewConstraint.URL_ABOUT)
	public String about(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_ABOUT);
		return CViewConstraint.VIEW_ABOUT;
	}
	
	@GetMapping(CViewConstraint.URL_CONTACT)
	public String contact(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_CONTACT);
		return CViewConstraint.VIEW_CONTACT;
	}

}
