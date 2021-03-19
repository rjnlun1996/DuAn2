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
import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.services.AccountService;
import com.hitech.services.FileStorageService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class AuthController {	
	
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
		boolean isValidLogin = accountService.loginAdmin(username, password);
		System.out.println(isValidLogin);
		if(!isValidLogin) {
			model.addAttribute("isValidLogin", isValidLogin);
			model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
			return CViewConstraint.VIEW_LOGIN;
		}		
		return ViewUtils.redirectTo(CViewConstraint.URL_HOME);
		
	}
	
	@GetMapping(CViewConstraint.URL_REGISTER)
	public String registerGet(Model model) {
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_REGISTER);
		model.addAttribute("register", new Account());
		return CViewConstraint.VIEW_REGISTER; 
	}

	@PostMapping(CViewConstraint.URL_REGISTER)
	public String insertPost(@Validated @ModelAttribute("register") Account account, BindingResult errors,
			RedirectAttributes reAttributes, Model model)
			throws IOException {
		System.err.println(errors.getFieldError());
		boolean isExistedUsername = accountService.findById(account.getUsername()) != null;
		boolean isExistedEmail = accountService.findByEmail(account.getEmail()) != null;
		boolean isErrors = errors.hasErrors();
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
			model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_REGISTER);
			return CViewConstraint.VIEW_REGISTER;
		}
		account.setLevel(2);
		accountService.save(account);
		reAttributes.addFlashAttribute("message", "Tạo tài khoản " + account.getUsername() + " thành công!");
		return ViewUtils.redirectTo(CViewConstraint.URL_HOME);
	}
	
	
	@GetMapping(CViewConstraint.URL_LOGOUT)
	public String logout() {
		sessionUtils.destroyAll();
		return ViewUtils.redirectTo(CViewConstraint.URL_LOGIN);
	}
}
