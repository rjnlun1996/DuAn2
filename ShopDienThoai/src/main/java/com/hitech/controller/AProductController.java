package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/product")
public class AProductController {
	
		
	@RequestMapping()
	public String table(Model model) {	
		model.addAttribute("sidebar", "product/index");
		return "admin/table-product";
	}
	
	@RequestMapping("insert")
	public String insert(Model model) {	
		model.addAttribute("sidebar", "product/insert");
		return "admin/insert-product";
	}

}
