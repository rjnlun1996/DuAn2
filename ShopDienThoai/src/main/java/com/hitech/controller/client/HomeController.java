package com.hitech.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.CViewConstraint;

@Controller
public class HomeController extends BaseController{
	
	@RequestMapping(CViewConstraint.URL_HOME)
	public String table(Model model) {
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_HOME);
		return CViewConstraint.VIEW_HOME;
	}
}
