package com.hitech.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.CViewConstraint;

@Controller
public class DetailProductController extends BaseController{
	
	@RequestMapping(CViewConstraint.URL_DETAIL_PRODUCT)
	public String detailProduct(Model model) {
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_DETAIL_PRODUCT);
		return CViewConstraint.VIEW_DETAIL_PRODUCT;
	}
}