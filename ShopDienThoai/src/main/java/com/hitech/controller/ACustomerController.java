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
import org.springframework.web.bind.annotation.RequestMapping;
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
public class ACustomerController {
	@Autowired
	private AccountService accountService; // access modify [public, protected, default, private]

	@Autowired
	private FileStorageService fileStorageService;

	@GetMapping(ViewConstraint.URL_ADMIN_CUSTOMER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CUSTOMER);
		model.addAttribute("list", accountService.findAllCustomerByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_CUSTOMER;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_CUSTOMER_INSERT)
	public String insertGet(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CUSTOMER_INSERT);
		model.addAttribute("customer", new Account());
		return ViewConstraint.VIEW_ADMIN_CUSTOMER_INSERT; // render view => prefix +
															// ViewConstraint.VIEW_ADMIN_ADMIN_INSERT
															// + subfix => path jsp => render html -> client
	}

	@PostMapping(ViewConstraint.URL_ADMIN_CUSTOMER_INSERT)
	public String insertPost(@Validated @ModelAttribute("customer") Account account, BindingResult errors,
			RedirectAttributes reAttributes, Model model, @RequestParam("image") MultipartFile file)
			throws IOException {
		boolean isExistedUsername = accountService.findById(account.getUsername()) != null;
		boolean isExistedEmail = accountService.findByEmail(account.getEmail()) != null;
		boolean isErrors = errors.hasErrors();
		if (isErrors || isExistedUsername || isExistedEmail) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			if (isExistedUsername) {
				model.addAttribute("errorUsername", "Username này đã tồn tại");
				model.addAttribute("isExistUsername", true);
			}
			if (isExistedEmail) {
				model.addAttribute("errorEmail", "Email này đã tồn tại");
				model.addAttribute("isExistEmail", true);
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CUSTOMER_INSERT);
			return ViewConstraint.VIEW_ADMIN_CUSTOMER_INSERT;
		}

		String avatar = fileStorageService.saveImage(file);
		if (avatar != null) {
			account.setPhoto(avatar);
		}
		account.setLevel(2);
		accountService.save(account);
		reAttributes.addFlashAttribute("message", "Tạo tài khoản " + account.getUsername() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_CUSTOMER_INSERT);
	}

	@GetMapping(ViewConstraint.URL_ADMIN_CUSTOMER_UPDATE)
	public String updateGet(Model model, @RequestParam String id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CUSTOMER_UPDATE);
		model.addAttribute("customer", accountService.findById(id));
		return ViewConstraint.VIEW_ADMIN_CUSTOMER_UPDATE; // render view => prefix +
															// ViewConstraint.VIEW_ADMIN_ADMIN_INSERT
															// + subfix => path jsp => render html -> client
	}

	@PostMapping(ViewConstraint.URL_ADMIN_CUSTOMER_UPDATE)
	public String updatePost(@Validated @ModelAttribute("customer") Account account, BindingResult errors,
			RedirectAttributes reAttributes, Model model, @RequestParam("image") MultipartFile file)
			throws IOException {
		boolean isErrors = errors.hasErrors();
		System.err.println(errors.getFieldError());
		Account accountOnDb = accountService.findById(account.getUsername());
		Account accountWithEmail = accountService.findByEmail(account.getEmail());
		String dbEmail = accountOnDb.getEmail();
		String tempEmail = account.getEmail();
		boolean isExistedEmail = accountWithEmail != null && !dbEmail.equals(tempEmail);
		if (isErrors || isExistedEmail) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			if (isExistedEmail) {
				model.addAttribute("errorEmail", "Email này đã tồn tại");
				model.addAttribute("isExistEmail", true);
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CUSTOMER_UPDATE);
			return ViewConstraint.VIEW_ADMIN_CUSTOMER_UPDATE;
		}

		String avatar = fileStorageService.saveImage(file);
		if (avatar != null) {
			accountOnDb.setPhoto(avatar);
		}
		accountOnDb.setEmail(account.getEmail());
		accountOnDb.setName(account.getName());
		accountOnDb.setPassword(account.getPassword());
		accountOnDb.setGender(account.isGender());
		accountOnDb.setBirthday(account.getBirthday());
		accountOnDb.setPhone(account.getPhone());
		accountOnDb.setAddress(account.getAddress());

		accountService.update(accountOnDb);
		reAttributes.addFlashAttribute("message", "Cập nhật tài khoản" + account.getUsername() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_CUSTOMER);
	}

//	@PostMapping(ViewConstraint.URL_ADMIN_ADMIN_DELETE)
//	public String delete(Model model, @RequestParam String username) {
//		accountService.deleteById(username);
//		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_ADMIN);
//	}

	@PostMapping(ViewConstraint.URL_ADMIN_CUSTOMER_DELETE)
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

	@GetMapping(ViewConstraint.URL_ADMIN_CUSTOMER_DETAIL)
	public String viewCustomer(Model model, @RequestParam String id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CUSTOMER_DETAIL);
		model.addAttribute("customer", accountService.findById(id));
		return ViewConstraint.VIEW_ADMIN_CUSTOMER_DETAIL;
	}

}
