package com.hitech.services;

import com.hitech.entities.Category;

public interface CategoryService extends IBaseService<Category, Integer> {
	
	boolean deleteByEnabled(Integer id);

}
