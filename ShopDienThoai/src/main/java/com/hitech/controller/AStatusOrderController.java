package com.hitech.controller;

import java.io.IOException;
import java.util.Comparator;
import java.util.stream.Collectors;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Order;
import com.hitech.entities.Status;
import com.hitech.entities.StatusOrder;
import com.hitech.services.OrderService;
import com.hitech.services.StatusOrderService;
import com.hitech.services.StatusService;
import com.hitech.utils.ViewUtils;

@Controller
public class AStatusOrderController {
	@Autowired
	private StatusOrderService statusOrderService;

	@Autowired
	private StatusService statusService;

	@Autowired
	private OrderService orderService;

	@RequestMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER);
		model.addAttribute("listStatusOrder", statusOrderService.findAllByEnabledTrueAndCurrentTrue());
		return ViewConstraint.VIEW_ADMIN_STATUS_ORDER;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT)
	public String show(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT);
		model.addAttribute("listStatus", statusService.findAllStatusByEnabledTrue());
		model.addAttribute("statusOrder", new StatusOrder());
		return ViewConstraint.VIEW_ADMIN_STATUS_ORDER_INSERT;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT)
	public Object insert(Model model, @Validated @ModelAttribute("statusOrder") StatusOrder statusOrder,
			BindingResult errors, RedirectAttributes reAttributes, @RequestParam String statusId,
			@RequestParam int orderId) throws IOException {
		boolean isErrors = errors.hasErrors();
		if (isErrors) {
			if (isErrors) {
				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT);
			return ViewConstraint.VIEW_ADMIN_STATUS_ORDER_INSERT;
		}

		statusOrder.setCurrent(true);
		statusOrder.setStatus(new Status(statusId));
		statusOrder.setOrder(new Order(orderId));
		statusOrderService.save(statusOrder);

		reAttributes.addFlashAttribute("message", "Tạo trạng thái đơn hàng thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_DISCOUNT_INSERT);
	}

	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_DELETE)
	@ResponseBody
	public boolean delete(Model model, @RequestParam Integer id) {
		return statusOrderService.deleteByEnabled(id);
	}

	@GetMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_UPDATE)
	public String updateGet(Model model, @RequestParam Integer orderId) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER_UPDATE);
		model.addAttribute("order", orderService.findById(orderId));
		model.addAttribute("listStatus", statusService.findAllStatusByEnabledTrue().stream()
				.sorted(Comparator.comparingInt(Status::getPriority)).collect(Collectors.toList()));
		return ViewConstraint.VIEW_ADMIN_STATUS_ORDER_UPDATE;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_UPDATE)
	public Object update(Model model, @RequestParam int orderId, @RequestParam String description,
			@RequestParam String statusId, RedirectAttributes reAttributes) throws IOException {
		StatusOrder so = new StatusOrder();
		so.setDescription(description);
		so.setStatus(statusService.findById(statusId));
		so.setOrder(orderService.findById(orderId));
		statusOrderService.save(so);
		reAttributes.addFlashAttribute("message", "Cập nhật trạng thái đơn hàng thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_STATUS_ORDER);
	}
}
