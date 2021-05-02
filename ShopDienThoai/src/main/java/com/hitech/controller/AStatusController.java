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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.entities.Status;
import com.hitech.services.StatusService;
import com.hitech.utils.ViewUtils;

@Controller
public class AStatusController {

	
	 @Autowired
	private StatusService statusService;

	@RequestMapping(ViewConstraint.URL_ADMIN_STATUS)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS);
		
		model.addAttribute("listStatus",statusService.findAllStatusByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_STATUS;
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_STATUS_INSERT)
	public String show(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_INSERT);
		model.addAttribute("status", new Status());
		return ViewConstraint.VIEW_ADMIN_STATUS_INSERT;
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_INSERT)
	public Object insert(Model model, 
			@Validated @ModelAttribute("status") Status status,
			BindingResult errors,
			RedirectAttributes ra)throws IOException {	
		boolean isExistedName= statusService.findByNameAndEnabledTrue(status.getName())!=null;
		boolean isErrors = errors.hasErrors();
		if(isErrors || isExistedName ) {
			if(isErrors){
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");}
			if (isExistedName) {
				model.addAttribute("error", "Trạng thái này đã tồn tại!");
				model.addAttribute("isExistName", true);
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_INSERT);
			return ViewConstraint.VIEW_ADMIN_STATUS_INSERT;
		}
		statusService.save(status);
		ra.addFlashAttribute("message", "Tạo trạng thái " + status.getName() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_STATUS_INSERT);
	}
	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_DELETE)
	@ResponseBody
	public boolean delete(Model model, @RequestParam String id) {
		boolean isExistedForeign = statusService.checkExistedForeign(id);

		// Nếu tồn tại khóa ngoại thì không cho phép xóa
		if (isExistedForeign) {
			return false;
		}
		return statusService.deleteByEnabled(id);
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_STATUS_UPDATE)
	public String updateGet(Model model, @RequestParam String id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_UPDATE);
		model.addAttribute("status", statusService.findById(id));
		return ViewConstraint.VIEW_ADMIN_STATUS_UPDATE; 
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_STATUS_UPDATE)
	public Object update(Model model, 
			@Validated @ModelAttribute("status") Status status,
			BindingResult errors,
			RedirectAttributes ra)throws IOException {	
		Status statusOnDb = statusService.findById(status.getId());
		boolean isExistedName= statusService.findByNameAndEnabledTrue(status.getName())!=null;
		boolean isErrors = errors.hasErrors();
		if(isErrors || isExistedName ) {
			if(isErrors){
			model.addAttribute("error", "Vui lòng nhập tên trạng thái!");}
			if (isExistedName) {
				model.addAttribute("error", "Trạng thái này đã tồn tại!");
				model.addAttribute("isExistName", true);
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_STATUS_UPDATE);
			return ViewConstraint.VIEW_ADMIN_STATUS_UPDATE;
		}
		statusOnDb.setId(status.getId());
		statusOnDb.setName(status.getName());
		statusService.update(statusOnDb);
		ra.addFlashAttribute("message", "Cập nhật trạng thái " + status.getName() + " thành công!");
	    return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_STATUS_UPDATE + "?id=" + status.getId());
	}
	
	
}
