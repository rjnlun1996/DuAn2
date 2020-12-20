package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
@RequestMapping("/ho-admin/login")
public class ALoginController {

	@RequestMapping("")
	public String table(Model model) {
		return "admin/login";
	}
}
