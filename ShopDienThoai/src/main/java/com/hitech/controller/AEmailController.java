package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AEmailController {
	
	@GetMapping("/mails/change-password")
	public String table(Model model) {
		return "mails/change-password";
	}
}
