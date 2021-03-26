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
import com.hitech.entities.OrderDetail;
import com.hitech.services.DiscountService;
import com.hitech.services.OrderDetailService;
import com.hitech.services.OrderService;
import com.hitech.services.ProductService;
import com.hitech.services.StatusOrderService;
import com.hitech.utils.ViewUtils;

@Controller
public class AOrderDetailController {

	@Autowired
	OrderDetailService orderDetailService;

	@Autowired
	OrderService orderService;

	@Autowired
	ProductService productService;

	@Autowired
	DiscountService discountService;

	@Autowired
	StatusOrderService statusOrderService;

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_DETAIL_VIEW)
	public String table(Model model, @RequestParam int orderId) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		model.addAttribute("listOrderDetail", orderDetailService.findAllByOrderId(orderId));
		model.addAttribute("order", orderService.findById(orderId));
		model.addAttribute("listStatus", statusOrderService.findAllByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER_DETAIL_VIEW;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_DETAIL_INSERT)
	public String insert1(Model model, @RequestParam int orderId) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		model.addAttribute("order", orderService.findById(orderId));
		model.addAttribute("orderDetail", new OrderDetail());
		model.addAttribute("listProduct", productService.findAllByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER_DETAIL_INSERT;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_DETAIL_INSERT)
	public Object insert(Model model, @Validated @ModelAttribute("orderDetail") OrderDetail orderDetail,
			BindingResult errors, RedirectAttributes ra, @RequestParam int orderId) throws IOException {
		if (errors.hasErrors()) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			model.addAttribute("listProduct", productService.findAllByEnabledTrue());
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
			return ViewConstraint.VIEW_ADMIN_ORDER_DETAIL_INSERT;
		}
		orderDetail.setAmount(orderDetail.getProduct().getImportPrice());
		orderDetail.setOrder(orderService.findById(orderId));
		orderDetail.setProductId(orderDetail.getProduct().getId());
		if (discountService.findByProductId(orderDetail.getProduct().getId()).size() != 0) {
			orderDetail.setDiscount(discountService.findByProductId(orderDetail.getProduct().getId()).get(0));
		} else {
			orderDetail.setDiscount(discountService.findById(9));
		}
		;
		System.err.println(orderDetail.getId());
		ra.addFlashAttribute("message", "Thêm thành công vào đơn hàng mã:" + orderId + "!");
		orderDetailService.save(orderDetail);
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_ORDER_DETAIL_VIEW + "?orderId=" + orderId);
	}

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_DETAIL_UPDATE)
	public String updateGet(Model model, @RequestParam int orderId, @RequestParam int odId) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		model.addAttribute("order", orderService.findById(orderId));
		model.addAttribute("orderDetail", orderDetailService.findById(odId));
		model.addAttribute("listProduct", productService.findAllByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER_DETAIL_UPDATE;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_DETAIL_DELETE + "{id}")
	public String delete(Model model, @PathVariable("id") int id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		orderDetailService.deleteByEnable(id);
		model.addAttribute("listOrderDetail", orderDetailService.findAllByOrderId(id));
		return ViewConstraint.VIEW_ADMIN_ORDER_DETAIL_VIEW;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_DETAIL_DELETE)
	@ResponseBody
	public boolean delete1(Model model, @RequestParam int orderDetailId) {
		System.err.println(orderDetailId);
		return orderDetailService.deleteByEnable(orderDetailId);
	}

}
