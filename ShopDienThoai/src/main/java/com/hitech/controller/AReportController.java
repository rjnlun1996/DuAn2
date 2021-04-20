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
import com.hitech.entities.IReport;
import com.hitech.repository.OrderRepository;

@Controller
public class AReportController {
	
	@Autowired
	private OrderRepository orderRepository;

	@RequestMapping(ViewConstraint.URL_ADMIN_REPORT)
	public String table(Model model) throws JsonProcessingException {
		ObjectMapper objectMapper=new ObjectMapper();
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_REPORT);
		List<IReport> report = orderRepository.report();
		List<String> years = report.stream().map(e -> (e.getMonthReport() + "/" + e.getYearReport())).collect(Collectors.toList());
		List<Long> values = report.stream().map(e -> e.getTotalReport()).collect(Collectors.toList());
		model.addAttribute("years", objectMapper.writeValueAsString(years));
		model.addAttribute("values", objectMapper.writeValueAsString(values));
		model.addAttribute("reports", report);
		return ViewConstraint.VIEW_ADMIN_REPORT;
	}
}
