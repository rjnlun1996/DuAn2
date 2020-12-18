package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AHomeController {
		
	@RequestMapping()
	public String home(Model model) {
		model.addAttribute("sidebar", "home");
		return "admin/index";
	}
}
