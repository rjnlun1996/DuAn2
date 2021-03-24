package com.hitech.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.CViewConstraint;

@Controller
public class CartController extends BaseController{
	
	@RequestMapping(CViewConstraint.URL_CART)
	public String cart(Model model) {
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_CART);
		return CViewConstraint.VIEW_CART;
	}
	
	@RequestMapping(CViewConstraint.URL_ORDER_SUCCESS)
	public String orderSuccess(Model model) {
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_ORDER_SUCCESS);
		return CViewConstraint.VIEW_ORDER_SUCCESS;
	}
}