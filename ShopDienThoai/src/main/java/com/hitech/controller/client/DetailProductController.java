package com.hitech.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitech.constraints.CViewConstraint;
import com.hitech.entities.Product;
import com.hitech.services.ProductService;

@Controller
public class DetailProductController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(CViewConstraint.URL_DETAIL_PRODUCT)
	public String detailProduct(Model model, @RequestParam int productId) {
		Product prod = productService.findById(productId);
		List<Product> sameProducts = productService.findAllHaveSamePrice(prod.getImportPrice());
		model.addAttribute("product", prod);
		model.addAttribute("sameProducts", sameProducts);
		return CViewConstraint.VIEW_DETAIL_PRODUCT;
	}
}