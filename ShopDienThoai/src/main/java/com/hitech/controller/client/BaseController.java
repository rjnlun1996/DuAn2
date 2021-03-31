package com.hitech.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.hitech.entities.Producer;
import com.hitech.services.ProducerService;

public class BaseController {
	
	@Autowired
	public ProducerService producerService;
	
	@ModelAttribute(name = "producers")
	public List<Producer> categories(){
		List<Producer> producers = producerService.findAllByEnabledTrue();
		for(Producer pro: producers) {
			
		}
		return producerService.findAllByEnabledTrue();
	}
}
