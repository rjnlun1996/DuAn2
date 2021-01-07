package com.hitech.services;

import java.util.List;

import com.hitech.entities.Category;

public interface CategoryService extends IBaseService<Category, Integer> {
	
	//List<Category> findAllCategoryByEnabledTrue();
	
	boolean deleteByEnabled(Integer id);

}
