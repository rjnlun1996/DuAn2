package com.hitech.controller;

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
import com.hitech.entities.StatusOrder;
import com.hitech.services.StatusOrderService;
import com.hitech.utils.ViewUtils;


@Controller
public class AStatusOrderController {
	 @Autowired
	private StatusOrderService statusOrderService;

	@RequestMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER);
		
		model.addAttribute("listStatusOrder",statusOrderService.findAllStatusOrderByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_STATUS_ORDER;
	}
     @GetMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT)
	public String show(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT);
		model.addAttribute("statusOrder", new StatusOrder());
		return ViewConstraint.VIEW_ADMIN_STATUS_ORDER_INSERT;
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT)
	public Object insert(Model model, 
			@Validated @ModelAttribute("statusOrder") StatusOrder statusOrder,
			BindingResult errors,
			RedirectAttributes ra) {	
		if(errors.hasErrors()) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT);
			return ViewConstraint.VIEW_ADMIN_STATUS_ORDER_INSERT;
		}
		statusOrderService.save(statusOrder);
		ra.addFlashAttribute("message", "Tạo trạng thái đơn hàng  " + statusOrder.getId() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_STATUS_ORDER_INSERT);
	}
	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_DELETE)
	@ResponseBody
	public boolean delete(Model model, @RequestParam Integer id) {
		return statusOrderService.deleteByEnabled(id);
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_UPDATE)
	public String updateGet(Model model, @RequestParam Integer id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER_UPDATE);
		model.addAttribute("statusOrder", statusOrderService.findById(id));
		return ViewConstraint.VIEW_ADMIN_STATUS_ORDER_UPDATE; 
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_ORDER_UPDATE)
	public Object update(Model model, 
			@Validated @ModelAttribute("statusOrder") StatusOrder statusOrder,
			BindingResult errors,
			RedirectAttributes ra) {	
		if(errors.hasErrors()) {
			model.addAttribute("error", "Vui lòng nhập tên trạng thái đơn hàng!");
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_ORDER_UPDATE);
			return ViewConstraint.VIEW_ADMIN_STATUS_ORDER_UPDATE;
		}
		statusOrderService.update(statusOrder);
		ra.addFlashAttribute("message", "Cập nhật trạng thái đơn hàng " + statusOrder.getId() + " thành công!");
	    return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_STATUS_ORDER_UPDATE + "?id=" + statusOrder.getId());
	}
}
