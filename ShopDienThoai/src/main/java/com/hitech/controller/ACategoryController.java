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
import com.hitech.entities.Category;
import com.hitech.services.CategoryService;
import com.hitech.utils.ViewUtils;

@Controller
public class ACategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(ViewConstraint.URL_ADMIN_CATEGORY)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY);
		// model.addAttribute("menu", "/ho-admin/category/");
		model.addAttribute("listCategory", categoryService.findAllCategoryByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_CATEGORY;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_CATEGORY_INSERT)
	public String show(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY_INSERT);
		model.addAttribute("category", new Category());
		return ViewConstraint.VIEW_ADMIN_CATEGORY_INSERT;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_CATEGORY_INSERT)
	public Object insert(Model model, @Validated @ModelAttribute("category") Category category, BindingResult errors,
			RedirectAttributes ra) throws IOException {
		boolean isExistedName = categoryService.findByNameAndEnabledTrue(category.getName()) != null;
		boolean isErrors = errors.hasErrors();
		if (isErrors || isExistedName) {
			if (isErrors) {
				model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			}
			if (isExistedName) {
				model.addAttribute("error", "Danh mục này đã tồn tại!");
				model.addAttribute("isExistName", true);
			}

			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY_INSERT);
			return ViewConstraint.VIEW_ADMIN_CATEGORY_INSERT;
		}
		categoryService.save(category);
		ra.addFlashAttribute("message", "Tạo danh mục " + category.getName() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_CATEGORY_INSERT);
	}

	@PostMapping(ViewConstraint.URL_ADMIN_CATEGORY_DELETE)
	@ResponseBody
	public boolean delete(Model model, @RequestParam Integer id) {
		return categoryService.deleteByEnabled(id);
	}

	@GetMapping(ViewConstraint.URL_ADMIN_CATEGORY_UPDATE)
	public String updateGet(Model model, @RequestParam Integer id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY_UPDATE);
		model.addAttribute("category", categoryService.findById(id));
		return ViewConstraint.VIEW_ADMIN_CATEGORY_UPDATE;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_CATEGORY_UPDATE)
	public Object update(Model model, @Validated @ModelAttribute("category") Category category, BindingResult errors,
			RedirectAttributes ra) throws IOException {
		boolean isExistedName = categoryService.findByNameAndEnabledTrue(category.getName()) != null;
		boolean isErrors = errors.hasErrors();
		if (isErrors || isExistedName) {
			if (isErrors) {
				model.addAttribute("error", "Vui lòng nhập tên danh mục!");
			}
			if (isExistedName) {
				model.addAttribute("error", "Danh mục này đã tồn tại!");
				model.addAttribute("isExistName", true);
			}
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY_UPDATE);
			return ViewConstraint.VIEW_ADMIN_CATEGORY_UPDATE;
		}
		categoryService.update(category);
		ra.addFlashAttribute("message", "Cập nhật danh mục " + category.getName() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_CATEGORY_UPDATE + "?id=" + category.getId());
	}

}
