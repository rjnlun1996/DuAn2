package com.hitech.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hitech.service.TestService;
 


@Controller
public class testController {
	private static final Logger logger = LoggerFactory.getLogger(testController.class);
	
	@Autowired
	private TestService testservice;
	
	@RequestMapping(value = "/test",method = RequestMethod.GET)
	public String test(Model model, Locale locale) {
		logger.info("Welcome home! The client locale is {}.", locale);
		 
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
 
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("product", testservice.findById(1));
		return "test";
	}
}
