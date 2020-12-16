package com.hitech.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hitech.entities.Category;
import com.hitech.repository.CategoryRepository;

@Controller
@RequestMapping("category")
public class CategoryController {
	
	@Autowired
	private CategoryRepository categoryRepository;
		
	@RequestMapping()
	@ResponseBody
	public List<Category> index() {	
		return categoryRepository.findAll();
	}

}
