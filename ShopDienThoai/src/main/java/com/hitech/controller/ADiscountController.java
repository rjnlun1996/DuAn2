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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Discount;
import com.hitech.entities.Product;
import com.hitech.services.DiscountService;
import com.hitech.services.ProductService;
import com.hitech.utils.ViewUtils;

@Controller
public class ADiscountController {
	@Autowired
	private DiscountService discountService; // access modify [public, protected, default, private]

	@Autowired
	private ProductService productService;

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
			RedirectAttributes reAttributes, Model model, @RequestParam int productId) throws IOException {
		boolean isErrors = errors.hasErrors();
		if (isErrors) {
			if (isErrors) {
				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_DISCOUNT_INSERT);
			return ViewConstraint.VIEW_ADMIN_DISCOUNT_INSERT;
		}
		discount.setProduct(new Product(productId));
		discount.setCurrent(true);
		discountService.save(discount);

		reAttributes.addFlashAttribute("message", "Tạo khuyến mãi thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_DISCOUNT_INSERT);
	}

	@GetMapping(ViewConstraint.URL_ADMIN_DISCOUNT_UPDATE)
	public String updateGet(Model model, @RequestParam int id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_DISCOUNT_UPDATE);
		model.addAttribute("discount", discountService.findById(id));
		return ViewConstraint.VIEW_ADMIN_DISCOUNT_UPDATE; // render view => prefix +
															// ViewConstraint.VIEW_ADMIN_ADMIN_INSERT
															// + subfix => path jsp => render html -> client
	}

	@PostMapping(ViewConstraint.URL_ADMIN_DISCOUNT_UPDATE)
	public String updatePost(@Validated @ModelAttribute("discount") Discount discount, BindingResult errors,
			RedirectAttributes reAttributes, Model model, @RequestParam int productId) throws IOException {
		boolean isErrors = errors.hasErrors();
		Discount discountOnDB = discountService.findById(discount.getId());
		if (isErrors) {
			if (isErrors) {
				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_DISCOUNT_UPDATE);
			return ViewConstraint.VIEW_ADMIN_DISCOUNT_UPDATE;
		}

		discountOnDB.setCurrent(discount.isCurrent());
		discountOnDB.setPercents(discount.getPercents());
		discountOnDB.setDescription(discount.getDescription());
		discountOnDB.setProduct(productService.findById(productId));

		discountService.update(discountOnDB);
		reAttributes.addFlashAttribute("message", "Cập nhật giảm giá của sản phẩm thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_DISCOUNT);
	}

	@PostMapping(ViewConstraint.URL_ADMIN_DISCOUNT_DELETE)
	@ResponseBody
	public boolean delete1(Model model, @RequestParam int id) {
		boolean isExistedForeign = discountService.checkExistedForeign(id);

		// Nếu tồn tại khóa ngoại thì không cho phép xóa
		if (isExistedForeign) {
			return false;
		}
		return discountService.deleteByEnabled(id);
	}

	@GetMapping(ViewConstraint.URL_ADMIN_DISCOUNT_SEARCH)
	@ResponseBody
	public Object table(Model model, @RequestParam int productId) {
		return discountService.findByProductId(productId);
	}
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
