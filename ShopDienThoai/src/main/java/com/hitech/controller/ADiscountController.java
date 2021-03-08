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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Discount;
import com.hitech.entities.Product;
import com.hitech.services.DiscountService;
import com.hitech.services.FileStorageService;
import com.hitech.utils.ViewUtils;

@Controller
public class ADiscountController {
	@Autowired
	private DiscountService discountService; // access modify [public, protected, default, private]

	@Autowired
	private FileStorageService fileStorageService;

	@GetMapping(ViewConstraint.URL_ADMIN_DISCOUNT)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_DISCOUNT);
		model.addAttribute("list", discountService.findByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_DISCOUNT;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_DISCOUNT_INSERT)
	public String insertGet(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_DISCOUNT_INSERT);
		model.addAttribute("discount", new Discount());
		return ViewConstraint.VIEW_ADMIN_DISCOUNT_INSERT; // render view => prefix +
															// ViewConstraint.VIEW_ADMIN_ADMIN_INSERT
															// + subfix => path jsp => render html -> client
	}

	@PostMapping(ViewConstraint.URL_ADMIN_DISCOUNT_INSERT)
	public String insertPost(@Validated @ModelAttribute("discount") Discount discount, BindingResult errors,
			RedirectAttributes reAttributes, Model model, @RequestParam int productId)
			throws IOException {
		boolean isErrors = errors.hasErrors();
		if (isErrors) {
			if (isErrors) {
				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_DISCOUNT_INSERT);
			return ViewConstraint.VIEW_ADMIN_DISCOUNT_INSERT;
		}
		discount.setProduct(new Product(productId));
		discountService.save(discount);
		
		reAttributes.addFlashAttribute("message", "Tạo khuyến mãi thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_DISCOUNT_INSERT);
	}

//	@GetMapping(ViewConstraint.URL_ADMIN_DISCOUNT_UPDATE)
//	public String updateGet(Model model, @RequestParam String id) {
//		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_DISCOUNT_UPDATE);
//		model.addAttribute("account", accountService.findById(id));
//		return ViewConstraint.VIEW_ADMIN_DISCOUNT_UPDATE; // render view => prefix +
//															// ViewConstraint.VIEW_ADMIN_ADMIN_INSERT
//															// + subfix => path jsp => render html -> client
//	}
//
//	@PostMapping(ViewConstraint.URL_ADMIN_DISCOUNT_UPDATE)
//	public String updatePost(@Validated @ModelAttribute("account") Account account, BindingResult errors,
//			RedirectAttributes reAttributes, Model model, @RequestParam("image") MultipartFile file)
//			throws IOException {
//		boolean isErrors = errors.hasErrors();
//		Account accountOnDb = accountService.findById(account.getUsername());
//		Account accountWithEmail = accountService.findByEmail(account.getEmail());
//		String dbEmail = accountOnDb.getEmail();
//		String tempEmail = account.getEmail();
//		boolean isExistedEmail = accountWithEmail != null && !dbEmail.equals(tempEmail);
//		if (isErrors || isExistedEmail) {
//			if (isErrors) {
//				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
//			}
//			if (isExistedEmail) {
//				model.addAttribute("errorEmail", "Email này đã tồn tại");
//				model.addAttribute("isExistEmail", true);
//			}
//			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_DISCOUNT_UPDATE);
//			return ViewConstraint.VIEW_ADMIN_DISCOUNT_UPDATE;
//		}
//
//		String avatar = fileStorageService.saveImage(file);
//		if (avatar != null) {
//			accountOnDb.setPhoto(avatar);
//		}
//		accountOnDb.setEmail(account.getEmail());
//		accountOnDb.setName(account.getName());
//		accountOnDb.setPassword(account.getPassword());
//		accountOnDb.setGender(account.isGender());
//		accountOnDb.setBirthday(account.getBirthday());
//		accountOnDb.setPhone(account.getPhone());
//		accountOnDb.setAddress(account.getAddress());
//
//		accountService.save(accountOnDb);
//		reAttributes.addFlashAttribute("message", "Cập nhật tài khoản" + account.getUsername() + " thành công!");
//		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_DISCOUNT);
//	}
//
////	@PostMapping(ViewConstraint.URL_ADMIN_ADMIN_DELETE)
////	public String delete(Model model, @RequestParam String username) {
////		accountService.deleteById(username);
////		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_ADMIN);
////	}
//
//	@PostMapping(ViewConstraint.URL_ADMIN_DISCOUNT_DELETE)
//	@ResponseBody
//	public boolean delete1(Model model, @RequestParam String username) {
//		return accountService.deleteByEnabled(username);
//	}
//
//	// @ModelAttribute <input path=""/>
//	// 1. /ho-admin/admin/insert method get (controller => new Account())
//
//	// Front End: Ajax $.ajax(); include: javascript basis
//	// Manual: thu3 cong.
//
//	// 1. access to /ho-admin/admin/insert
//	// 2.

}
