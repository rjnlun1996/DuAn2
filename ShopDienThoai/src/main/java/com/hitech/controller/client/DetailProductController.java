package com.hitech.controller.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitech.constraints.CViewConstraint;
import com.hitech.services.ProductService;

@Controller
public class DetailProductController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(CViewConstraint.URL_DETAIL_PRODUCT)
	public String detailProduct(Model model, @RequestParam int productId) {
		model.addAttribute("product", productService.findById(productId));
		return CViewConstraint.VIEW_DETAIL_PRODUCT;
	}
}