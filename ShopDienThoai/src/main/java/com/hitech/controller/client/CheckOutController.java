package com.hitech.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.CViewConstraint;

@Controller
public class CheckOutController extends BaseController{
	
	@RequestMapping(CViewConstraint.URL_CHECK_OUT)
	public String checkOut(Model model) {
		model.addAttribute(CViewConstraint.MENUC, CViewConstraint.URL_CHECK_OUT);
		return CViewConstraint.VIEW_CHECK_OUT;
	}
}