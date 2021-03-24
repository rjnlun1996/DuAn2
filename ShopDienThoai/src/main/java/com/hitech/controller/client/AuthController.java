package com.hitech.controller.client;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.CViewConstraint;
import com.hitech.entities.Account;
import com.hitech.services.AccountService;
<<<<<<< HEAD
import com.hitech.services.EmailService;
import com.hitech.services.FileStorageService;
=======
>>>>>>> branch 'master' of https://github.com/rjnlun1996/DuAn2.git
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

	@GetMapping(CViewConstraint.URL_LOGIN)
	public String table(Model model) {
		return CViewConstraint.VIEW_LOGIN;
	}

	@PostMapping(CViewConstraint.URL_LOGIN)
	public String insert(Model model, @RequestParam String username, @RequestParam String password) {
		boolean isValidLogin = accountService.loginAdmin(username, password);
		System.out.println(isValidLogin);
		if (!isValidLogin) {
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
<<<<<<< HEAD
			RedirectAttributes reAttributes, Model model) throws IOException {
		System.err.println(errors.getFieldError());
=======
			RedirectAttributes reAttributes, Model model)
			throws IOException {
>>>>>>> branch 'master' of https://github.com/rjnlun1996/DuAn2.git
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
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_CHANGE_PASSWORD);
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

	@GetMapping(CViewConstraint.URL_PROFILE)
	public String Profile(Model model) {
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_PROFILE);
		model.addAttribute("profile", sessionUtils.getUser());
		model.addAttribute("se", sessionUtils);
		return CViewConstraint.VIEW_PROFILE;
	}

	@GetMapping(CViewConstraint.URL_PROFILE_UPDATE)
	public String ProfileUpdateGet(Model model, @RequestParam String id) {
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_PROFILE_UPDATE);
		model.addAttribute("profile", accountService.findById(id));
		return CViewConstraint.VIEW_PROFILE_UPDATE; // render view => prefix + ViewConstraint.VIEW_ADMIN_ADMIN_INSERT
													// + subfix => path jsp => render html -> client
	}

	@PostMapping(CViewConstraint.URL_PROFILE)
	public String updatePost(@Validated @ModelAttribute("profile") Account account, BindingResult errors,
			RedirectAttributes reAttributes, Model model, @RequestParam("image") MultipartFile file)
			throws IOException {
		boolean isErrors = errors.hasErrors();
		Account accountOnDb = accountService.findById(account.getUsername());
		Account accountWithEmail = accountService.findByEmail(account.getEmail());
		String dbEmail = accountOnDb.getEmail();
		String tempEmail = account.getEmail();
		boolean isExistedEmail = accountWithEmail != null && !dbEmail.equals(tempEmail);
		if (isErrors || isExistedEmail) {
			System.err.println("error:" + isErrors);
			System.err.println("isExistedEmail:" + isExistedEmail);
			if (isErrors) {
				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			}
			if (isExistedEmail) {
				model.addAttribute("errorEmail", "Email này đã tồn tại");
				model.addAttribute("isExistEmail", true);
			}
			System.err.println(321);
			return CViewConstraint.VIEW_PROFILE;
		}

		String avatar = fileStorageService.saveImage(file);
		if (avatar != null) {
			accountOnDb.setPhoto(avatar);
		}
		accountOnDb.setEmail(account.getEmail());
		accountOnDb.setName(account.getName());
		accountOnDb.setGender(account.isGender());
		accountOnDb.setBirthday(account.getBirthday());
		accountOnDb.setPhone(account.getPhone());
		accountOnDb.setAddress(account.getAddress());
		sessionUtils.setUser(accountService.update(accountOnDb));
		reAttributes.addFlashAttribute("message", "Cập nhật tài khoản" + account.getUsername() + " thành công!");
		return ViewUtils.redirectTo(CViewConstraint.URL_PROFILE);
	}

}
