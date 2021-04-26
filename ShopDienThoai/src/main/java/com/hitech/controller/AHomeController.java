package com.hitech.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.helper.IReport;
import com.hitech.repository.OrderRepository;
import com.hitech.services.AccountService;
import com.hitech.services.OrderService;

@Controller
public class AHomeController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private AccountService acountService;
	
	@Autowired
	private OrderRepository orderRepository;

	@RequestMapping(ViewConstraint.URL_ADMIN_HOME)
	public String table(Model model) throws JsonProcessingException {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_HOME);
		
		// TỔNG DOANH THU VỚI CÁC ĐƠN HÀNG CÓ TRẠNG THÁI ĐÃ GIAO HÀNG (DGH)
		String total = orderService.calTotalRevenue("DGH");
		
		//TỔNG SỐ SẢN PHẨM ĐÃ BÁN RA TRONG CÁC ĐƠN HÀNG CÓ TRẠNG THÁI ĐÃ GIAO HÀNG
		String prodSold = orderService.calTotalProductSold("DGH");
		
		//TỔNG SỐ KHÁCH HÀNG TRONG HỆ THỐNG VỚI LEVEL = 2;
		String totalCustomer = acountService.calTotalAccount(2);
		
		//TỔNG SỐ ĐƠN HÀNG ĐANG XỬ LÍ
		String totalProcessingOrder = orderService.calTotalOrder("DXL");
		
		ObjectMapper objectMapper= new ObjectMapper();
		List<IReport> report = orderRepository.report();
		List<String> years = report.stream().map(e -> (e.getMonthReport() + "/" + e.getYearReport())).collect(Collectors.toList());
		List<Long> values = report.stream().map(e -> e.getTotalReport()).collect(Collectors.toList());
		model.addAttribute("years", objectMapper.writeValueAsString(years));
		model.addAttribute("values", objectMapper.writeValueAsString(values));
		model.addAttribute("reports", report);
		
		model.addAttribute("total", total);
		model.addAttribute("prodSold", prodSold);
		model.addAttribute("totalCustomer", totalCustomer);
		model.addAttribute("totalProcessingOrder", totalProcessingOrder);
		return ViewConstraint.VIEW_ADMIN_HOME;
	}
}
