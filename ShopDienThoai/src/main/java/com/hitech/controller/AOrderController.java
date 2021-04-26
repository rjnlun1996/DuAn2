package com.hitech.controller;

import java.io.IOException;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

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
import com.hitech.entities.OrderDetail;
import com.hitech.services.AccountService;
import com.hitech.services.DiscountService;
import com.hitech.services.OrderService;
import com.hitech.utils.ViewUtils;

@Controller
public class AOrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private DiscountService discountService;

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		
//		// Danh sách order (1 order có nhiều OrderDetail == sản phẩm)
//		List<Order> listOrder = orderService.findByEnabledTrue();
//		
//		List<Order> listOrderUpdated = new ArrayList<Order>();	
//		
//		// Lặp qua từng Order
//		for(Order order: listOrder) {
//			
//			// Danh sách OrderDetail sau khi đã cập nhật Discount
//			Set<OrderDetail> orderDetailUpdated = new HashSet<OrderDetail>();
//			
//			// Lặp qua danh sách OrderDetail để lấy discountId và tìm Discount trong db
//			for(OrderDetail ods: order.getOrderDetails()) {
//				//ods.getDiscount() == null
//				Discount discount = discountService.findById(ods.getDiscountId());
//				
//				//ods.getDiscount() có giá trị
//				ods.setDiscount(discount);
//				
//				// Lưu vào danh sách OrderDetail sau khi đã cập nhật Discount
//				orderDetailUpdated.add(ods);
//			}			
//			
//			// Cập nhật lại danh sách OrderDetails đã set giá trị discount cho từng order
//			order.setOrderDetails(orderDetailUpdated);
//			listOrderUpdated.add(order);
//		}
//		model.addAttribute("listOrder", listOrderUpdated);
		
	
		List<Order> sortOrder =  orderService.findByEnabledTrue().stream().map(e -> {			
			Set<OrderDetail> od = e.getOrderDetails().stream().map(o -> {
				o.setDiscount(discountService.findById(o.getDiscountId()));
				return o;
			}).distinct().collect(Collectors.toSet());
			e.setOrderDetails(od);			
			return e;
		}).sorted(Comparator.comparing(Order::getId).reversed()).collect(Collectors.toList());
		model.addAttribute("listOrder", sortOrder);
		return ViewConstraint.VIEW_ADMIN_ORDER;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
	public String insert(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
		model.addAttribute("order", new Order());
		model.addAttribute("listUser", accountService.findAllCustomerByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER_INSERT;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
	public Object insert(Model model, @Validated @ModelAttribute("order") Order order, BindingResult errors,
			RedirectAttributes ra) throws IOException {
		if (errors.hasErrors()) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
			return ViewConstraint.VIEW_ADMIN_ORDER_INSERT;
		}
		order.setTotal(order.calOrder());
		ra.addFlashAttribute("message", "Tạo đơn hàng thành công!");
		orderService.save(order);
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_ORDER_INSERT);
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_UPDATE)
	public Object update(Model model, @Validated @ModelAttribute("order") Order order,
			@RequestParam String username, BindingResult errors,
			RedirectAttributes ra) throws IOException {
		if (errors.hasErrors()) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
			return ViewConstraint.URL_ADMIN_ORDER_UPDATE;
		}
		
		order.setAccount(accountService.findById(username));
		ra.addFlashAttribute("message", "Cập nhật dữ liệu thành công!");
		orderService.save(order);
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_ORDER_UPDATE + "?orderId=" + order.getId());
	}

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_UPDATE)
	public String updateGet(Model model, @RequestParam int orderId) {

		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_UPDATE);
		Order od = orderService.findById(orderId);
		model.addAttribute("order", od);
		model.addAttribute("listUser", accountService.findAllCustomerByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER_UPDATE;
	}
//	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_SEARCH)
//	public Object search(@RequestParam )

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_DELETE + "{id}")
	public String delete(Model model, @PathVariable("id") int id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		orderService.deleteByEnable(id);
		model.addAttribute("listOrder", orderService.findByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_DELETE)
	@ResponseBody
	public boolean delete1(Model model, @RequestParam int id) {
		return orderService.deleteByEnable(id);
	}

}
