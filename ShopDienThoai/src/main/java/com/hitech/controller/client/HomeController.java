package com.hitech.controller.client;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hitech.constraints.CViewConstraint;
import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Discount;
import com.hitech.entities.Product;
import com.hitech.entities.helper.IReport;
import com.hitech.repository.OrderRepository;
import com.hitech.services.ProductService;

@Controller
public class HomeController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderRepository orderRepository;
		
	@RequestMapping(CViewConstraint.URL_HOME)
	public String table(Model model) throws JsonProcessingException {
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
