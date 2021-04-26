package com.hitech.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.entities.Product;
import com.hitech.entities.helper.IReportTotal;
import com.hitech.entities.helper.ITopCustomerBuy;
import com.hitech.entities.helper.ITopSellProduct;
import com.hitech.entities.helper.TopCustomerBuy;
import com.hitech.entities.helper.TopSellProduct;
import com.hitech.repository.OrderRepository;
import com.hitech.services.AccountService;
import com.hitech.services.ProductService;

@Controller
public class AReportController {
	
	private SimpleDateFormat f = new SimpleDateFormat("MM/dd/yyyy");
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private AccountService accountService;
	

	@RequestMapping(ViewConstraint.URL_ADMIN_REPORT)
	public String table(Model model, @RequestParam(required = false) String time) throws JsonProcessingException, ParseException {		
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_REPORT);
		ObjectMapper objectMapper = new ObjectMapper();
		
		
		
//		List<IReport> report = orderRepository.report();
//		List<String> years = report.stream().map(e -> (e.getMonthReport() + "/" + e.getYearReport())).collect(Collectors.toList());
//		List<Long> values = report.stream().map(e -> e.getTotalReport()).collect(Collectors.toList());
//		
//		model.addAttribute("years", objectMapper.writeValueAsString(years));
//		model.addAttribute("values", objectMapper.writeValueAsString(values));
//		model.addAttribute("reports", report);	
		
		// Splice time
		if(StringUtils.isBlank(time)) {
			String startDay = "01/01/" + String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
			time = startDay + " - " + f.format(new Date());
		}
		
		Map<String, Date> date = spliceTime(time);
		
		// REPORT TOTAL BY DATERANGe
		IReportTotal reports = orderRepository.report(date.get("first"), date.get("last"));			
		
		// TOP PRODUCT
		List<ITopSellProduct> topProducts = orderRepository.reportTopSellProduct(date.get("first"), date.get("last"));
		if(topProducts.size() >= 5) {
			topProducts = topProducts.subList(0, 5);
		}
		List<TopSellProduct> products = new ArrayList<TopSellProduct>();
		for(ITopSellProduct tp: topProducts) {
			Product p = productService.findById(tp.getProductId());
			products.add(new TopSellProduct(p, tp.getQuantity()));
		}
		
		// TOP CUSTOMER
		List<ITopCustomerBuy> topCustomers = orderRepository.reportTopSellCustomer(date.get("first"), date.get("last"));
		if(topCustomers.size() >= 5) {
			topCustomers = topCustomers.subList(0, 5);
		}
		List<TopCustomerBuy> customers = new ArrayList<TopCustomerBuy>();
		for(ITopCustomerBuy tp: topCustomers) {			
			Account a = accountService.findById(tp.getCustomerId());
			customers.add(new TopCustomerBuy(a, tp.getQuantityProducts(), tp.getTotalBuy()));
		}
		
		
		model.addAttribute("reports", reports);
		model.addAttribute("times", time);
		model.addAttribute("products", products);
		model.addAttribute("customers", customers);
		
		return ViewConstraint.VIEW_ADMIN_REPORT;
	}
	
	private Map<String, Date> spliceTime(String time) throws ParseException {		
		Map<String, Date> date = new HashMap<String, Date>();
		date.put("first", f.parse(time.split(" - ")[0]));
		date.put("last", f.parse(time.split(" - ")[1]));		
		return date;
	}
}
