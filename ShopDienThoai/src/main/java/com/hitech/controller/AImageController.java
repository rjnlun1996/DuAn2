package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class AImageController {

	@RequestMapping(ViewConstraint.URL_ADMIN_IMAGE)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_IMAGE);
		return ViewConstraint.VIEW_ADMIN_IMAGE;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_IMAGE_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_IMAGE_INSERT);
		return ViewConstraint.VIEW_ADMIN_IMAGE_INSERT;
	}

}
