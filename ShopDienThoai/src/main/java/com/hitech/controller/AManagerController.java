package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AManagerController {
			
	@RequestMapping("manager")
	public String home(Model model) {
		model.addAttribute("sidebar", "manager");
		return "admin/manager";
	}
	
}
