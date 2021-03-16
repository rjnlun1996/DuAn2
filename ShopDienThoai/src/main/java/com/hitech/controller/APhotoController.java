package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitech.constraints.ViewConstraint;

@Controller
public class APhotoController {

	@GetMapping(ViewConstraint.URL_ADMIN_PHOTO)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PHOTO);
		return ViewConstraint.VIEW_ADMIN_PHOTO;
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_PHOTO_INSERT)
	public String insert(Model model,@RequestParam int productId) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PHOTO_INSERT);
		return ViewConstraint.VIEW_ADMIN_PHOTO_INSERT;
	}

}
