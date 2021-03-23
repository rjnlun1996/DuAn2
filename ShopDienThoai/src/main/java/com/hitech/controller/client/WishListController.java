package com.hitech.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.CViewConstraint;

@Controller
public class WishListController extends BaseController{
	
	@RequestMapping(CViewConstraint.URL_WISHLIST)
	public String wishlist(Model model) {
		model.addAttribute(CViewConstraint.MENU, CViewConstraint.URL_WISHLIST);
		return CViewConstraint.VIEW_WISHLIST;
	}
}