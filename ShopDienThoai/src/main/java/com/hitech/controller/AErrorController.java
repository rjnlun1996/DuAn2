package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AErrorController {
	
	@GetMapping(ViewConstraint.URL_ADMIN_404)
	public String table(Model model) {
		return ViewConstraint.VIEW_ADMIN_404;
	}
}
