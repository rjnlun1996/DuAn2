package com.hitech.controller;

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

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.services.AccountService;
import com.hitech.services.FileStorageService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class AProfileController {
	@Autowired
	private AccountService accountService; // access modify [public, protected, default, private]

	@Autowired
	private FileStorageService fileStorageService;
	
	@Autowired
	private SessionUtils sessionUtils;

	@GetMapping(ViewConstraint.URL_ADMIN_PROFILE)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PROFILE);
		model.addAttribute("profile", sessionUtils.getUser());
		model.addAttribute("se", sessionUtils);
		return ViewConstraint.VIEW_ADMIN_PROFILE;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_PROFILE_UPDATE)
	public String updateGet(Model model, @RequestParam String id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PROFILE_UPDATE);
		model.addAttribute("profile", accountService.findById(id));
		return ViewConstraint.VIEW_ADMIN_PROFILE_UPDATE; // render view => prefix + ViewConstraint.VIEW_ADMIN_ADMIN_INSERT
														// + subfix => path jsp => render html -> client
	}

	@PostMapping(ViewConstraint.URL_ADMIN_PROFILE_UPDATE)
	public String updatePost(@Validated @ModelAttribute("account") Account account, BindingResult errors,
			RedirectAttributes reAttributes, Model model, @RequestParam("image") MultipartFile file)
			throws IOException {
		boolean isErrors = errors.hasErrors();
		Account accountOnDb = accountService.findById(account.getUsername());
		Account accountWithEmail = accountService.findByEmail(account.getEmail());
		String dbEmail = accountOnDb.getEmail();
		String tempEmail = account.getEmail();
		boolean isExistedEmail = accountWithEmail != null && !dbEmail.equals(tempEmail);
		if (isErrors || isExistedEmail) {
			if (isErrors) {
				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			}
			if (isExistedEmail) {
				model.addAttribute("errorEmail", "Email này đã tồn tại");
				model.addAttribute("isExistEmail", true);
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PROFILE_UPDATE);
			return ViewConstraint.VIEW_ADMIN_PROFILE_UPDATE;
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
		accountOnDb.setPassword(account.getPassword());

		accountService.update(accountOnDb);
		reAttributes.addFlashAttribute("message", "Cập nhật tài khoản" + account.getUsername() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_PROFILE);
	}

}
