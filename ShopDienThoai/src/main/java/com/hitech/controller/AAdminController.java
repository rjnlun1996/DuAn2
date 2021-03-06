package com.hitech.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.services.AccountService;
import com.hitech.services.FileStorageService;
import com.hitech.utils.ViewUtils;

@Controller
public class AAdminController {

	@Autowired
	private AccountService accountService; // access modify [public, protected, default, private]
	
	@Autowired
    private FileStorageService fileStorageService;
	
	@GetMapping(ViewConstraint.URL_ADMIN_ADMIN)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN);
		model.addAttribute("list", accountService.findAllAdminByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ADMIN;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_ADMIN_INSERT)
	public String insertGet(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN_INSERT);
		model.addAttribute("account", new Account());
		return ViewConstraint.VIEW_ADMIN_ADMIN_INSERT; // render view => prefix + ViewConstraint.VIEW_ADMIN_ADMIN_INSERT + subfix => path jsp => render html -> client
	}

	@PostMapping(ViewConstraint.URL_ADMIN_ADMIN_INSERT)
	public String insertPost(@Validated @ModelAttribute("account") Account account, 
			BindingResult errors,
			RedirectAttributes reAttributes,
			Model model,
			@RequestParam("image") MultipartFile file) throws IOException {		
		boolean isExistedUsername = accountService.findById(account.getUsername()) != null;
		boolean isErrors = errors.hasErrors();
		if(isErrors || isExistedUsername) {
			String error = "Vui lòng kiểm tra lại thông tin nhập sai!";
			if(!isErrors && isExistedUsername) {
				error = "Tài khoản này đã tồn tại";
				model.addAttribute("isExist", true);
			}
			model.addAttribute("error", error);
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN_INSERT);
			return ViewConstraint.VIEW_ADMIN_ADMIN_INSERT;
		}		
		
		String avatar = fileStorageService.saveImage(file);
		if(avatar != null) {
			account.setPhoto(avatar);
		}
		account.setLevel(0);
		accountService.save(account);
		reAttributes.addFlashAttribute("message", "Tạo tài khoản " + account.getUsername() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_ADMIN_INSERT);
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_ADMIN_UPDATE)
	public String updateGet(Model model, @RequestParam String id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ADMIN_UPDATE);
		model.addAttribute("account", accountService.findById(id));
		return ViewConstraint.VIEW_ADMIN_ADMIN_UPDATE; // render view => prefix + ViewConstraint.VIEW_ADMIN_ADMIN_INSERT + subfix => path jsp => render html -> client
	}

//	@PostMapping(ViewConstraint.URL_ADMIN_ADMIN_DELETE)
//	public String delete(Model model, @RequestParam String username) {
//		accountService.deleteById(username);
//		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_ADMIN);
//	}

	@PostMapping(ViewConstraint.URL_ADMIN_ADMIN_DELETE)
	@ResponseBody
	public boolean delete1(Model model, @RequestParam String username) {
		return accountService.deleteByEnabled(username);
	}

	// @ModelAttribute <input path=""/>
	// 1. /ho-admin/admin/insert method get (controller => new Account())

	// Front End: Ajax $.ajax(); include: javascript basis
	// Manual: thu3 cong.

	// 1. access to /ho-admin/admin/insert
	// 2.

}
