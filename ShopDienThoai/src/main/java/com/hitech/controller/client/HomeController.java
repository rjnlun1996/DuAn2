package com.hitech.controller.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.CViewConstraint;
import com.hitech.entities.Discount;
import com.hitech.entities.Product;
import com.hitech.services.DiscountService;
import com.hitech.services.ProductService;

@Controller
public class HomeController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private DiscountService discountService;
	
	@RequestMapping(CViewConstraint.URL_HOME)
	public String table(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_HOME);
		List<Product> list = productService.findSaleProduct();
		List<Integer> listDiscount = new ArrayList<>();
		for(Product p : list) {
			for(Discount d : p.getDiscounts()) {
				if(d.isCurrent() && d.isEnabled()) {
					listDiscount.add(d.getPercents());
					break;
				}
			}
		}
//		list.stream().mapToInt(e -> e.getDiscounts().stream().filter(f -> {
//			return f.isCurrent() && f.isEnabled();
//		})
//				.findFirst().orElse(null).getPercents()).collect(Collectors.toList());
//		for(Product p : list) {
//			
//		}
		model.addAttribute("listDiscount", listDiscount);
		model.addAttribute("saleProduct", productService.findSaleProduct());
		return CViewConstraint.VIEW_HOME;
	}
	

}
