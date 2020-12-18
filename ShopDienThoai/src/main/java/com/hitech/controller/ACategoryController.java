package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/category")
public class ACategoryController {
	
		
	@RequestMapping()
	public String table(Model model) {	
		model.addAttribute("sidebar", "category/index");
		return "admin/table-category";
	}
	
	@RequestMapping("insert")
	public String insert(Model model) {	
		model.addAttribute("sidebar", "category/insert");
		return "admin/insert-category";
	}

}
