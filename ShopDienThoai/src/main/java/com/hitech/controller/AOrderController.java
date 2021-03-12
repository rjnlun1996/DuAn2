package com.hitech.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Order;
import com.hitech.services.AccountService;
import com.hitech.services.OrderService;
import com.hitech.utils.ViewUtils;

@Controller
public class AOrderController {
	@Autowired
	private OrderService  orderService;
	@Autowired
	private AccountService accountService;
	
	@GetMapping(ViewConstraint.URL_ADMIN_ORDER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		model.addAttribute("listOrder", orderService.findByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER;
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
		model.addAttribute("order", new Order());
		model.addAttribute("listUser",accountService.findAllCustomerByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER_INSERT;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_DELETE + "{id}")
	public String delete(Model model, @PathVariable("id") int id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		orderService.deleteByEnable(id);
		model.addAttribute("listOrder", orderService.findByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER;
	}
	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
	public Object insert(Model model, @Validated @ModelAttribute("order") Order order, BindingResult errors,
			RedirectAttributes ra) throws IOException {
		if (errors.hasErrors()) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
			return ViewConstraint.VIEW_ADMIN_ORDER_INSERT;
		}
		order.setTotal(0);
		ra.addFlashAttribute("message", "Tạo đơn hàng thành công!");
		orderService.save(order);
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_ORDER_INSERT);
	}
	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_DELETE)
	@ResponseBody
	public boolean delete1(Model model, @RequestParam int id) {
		return orderService.deleteByEnable(id);
	}
//	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_SEARCH)
//	public Object search(@RequestParam )

}
