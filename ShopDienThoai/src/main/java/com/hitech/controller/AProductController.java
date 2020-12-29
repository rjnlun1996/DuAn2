package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;
import com.hitech.services.ProductService;

@Controller
public class AProductController {
	@Autowired
	private ProductService productService;
	@RequestMapping(ViewConstraint.URL_ADMIN_PRODUCT)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT);
		model.addAttribute("listProduct",productService.findAll());
		return ViewConstraint.VIEW_ADMIN_PRODUCT;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_PRODUCT_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT_INSERT);
		return ViewConstraint.VIEW_ADMIN_PRODUCT_INSERT;
	}
	@RequestMapping(ViewConstraint.URL_ADMIN_PRODUCT_DELETE+"{id}")
	public String delete(Model model,@PathVariable("id") int id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT);
		productService.delete(id);
		model.addAttribute("listProduct",productService.findAll());
		return ViewConstraint.VIEW_ADMIN_PRODUCT;
	}
}
