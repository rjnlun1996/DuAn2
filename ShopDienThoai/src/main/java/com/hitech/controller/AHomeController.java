package com.hitech.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Account;
import com.hitech.entities.Product;
import com.hitech.entities.helper.IReport;
import com.hitech.entities.helper.IReportTotal;
import com.hitech.entities.helper.ITopCustomerBuy;
import com.hitech.entities.helper.ITopSellProduct;
import com.hitech.entities.helper.TopCustomerBuy;
import com.hitech.entities.helper.TopSellProduct;
import com.hitech.services.AccountService;
import com.hitech.services.OrderService;
import com.hitech.services.ProductService;
import com.hitech.utils.StringUtils;

@Controller
public class AHomeController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private ProductService productService;

	@RequestMapping(ViewConstraint.URL_ADMIN_HOME)
	public String table(Model model) throws JsonProcessingException {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_HOME);
		
		// TỔNG DOANH THU VỚI CÁC ĐƠN HÀNG CÓ TRẠNG THÁI ĐÃ GIAO HÀNG (DGH)
		String total = orderService.calTotalRevenue("DHT");
		
		//TỔNG SỐ SẢN PHẨM ĐÃ BÁN RA TRONG CÁC ĐƠN HÀNG CÓ TRẠNG THÁI ĐÃ GIAO HÀNG
		String prodSold = orderService.calTotalProductSold("DHT");
		
		//TỔNG SỐ KHÁCH HÀNG TRONG HỆ THỐNG VỚI LEVEL = 2;
		String totalCustomer = accountService.calTotalAccount(2);
		
		//TỔNG SỐ ĐƠN HÀNG ĐANG XỬ LÍ
		String totalProcessingOrder = orderService.calTotalOrder("DXL");
		
		ObjectMapper objectMapper= new ObjectMapper();
		List<IReport> report = orderService.report();
		List<String> years = report.stream().map(e -> (e.getMonthReport() + "/" + e.getYearReport())).collect(Collectors.toList());
		List<Long> values = report.stream().map(e -> e.getTotalReport()).collect(Collectors.toList());
		
		// REPORT TOTAL BY DATERANGe
		IReportTotal reports = orderService.reportAll();			
		
		// TOP PRODUCT
		List<ITopSellProduct> topProducts = orderService.reportTopSellProductAll();
		if(topProducts.size() >= 5) {
			topProducts = topProducts.subList(0, 5);
		}
		List<TopSellProduct> products = new ArrayList<TopSellProduct>();
		for(ITopSellProduct tp: topProducts) {
			Product p = productService.findById(tp.getProductId());
			products.add(new TopSellProduct(p, tp.getQuantity()));
		}
		
		// TOP CUSTOMER
		List<ITopCustomerBuy> topCustomers = orderService.reportTopSellCustomerAll();
		if(topCustomers.size() >= 5) {
			topCustomers = topCustomers.subList(0, 5);
		}
		List<TopCustomerBuy> customers = new ArrayList<TopCustomerBuy>();
		for(ITopCustomerBuy tp: topCustomers) {			
			Account a = accountService.findById(tp.getCustomerId());
			customers.add(new TopCustomerBuy(a, tp.getQuantityProducts(), tp.getTotalBuy()));
		}
		
		
		model.addAttribute("reports", reports);
		model.addAttribute("products", products);
		model.addAttribute("customers", customers);		
		
		model.addAttribute("years", objectMapper.writeValueAsString(years));
		model.addAttribute("values", objectMapper.writeValueAsString(values));
		model.addAttribute("reports", report);
		
		model.addAttribute("total", StringUtils.renderPrice(total));
		model.addAttribute("prodSold", prodSold);
		model.addAttribute("totalCustomer", totalCustomer);
		model.addAttribute("totalProcessingOrder", totalProcessingOrder);
		return ViewConstraint.VIEW_ADMIN_HOME;
	}
}
