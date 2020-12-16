package com.hitech.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = {"", "index"})
	public String home() {
		return "client/index";
	}
}
