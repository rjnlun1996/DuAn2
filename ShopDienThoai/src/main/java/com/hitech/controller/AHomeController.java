package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AHomeController {

	@RequestMapping(ViewConstraint.URL_ADMIN_HOME)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_HOME);
		return ViewConstraint.VIEW_ADMIN_HOME;
	}
}
