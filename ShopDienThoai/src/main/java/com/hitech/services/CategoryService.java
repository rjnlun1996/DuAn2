package com.hitech.services;

import java.util.List;

import com.hitech.entities.Category;

public interface CategoryService extends IBaseService<Category, Integer> {

	Category findById(Integer id);

	List<Category> findAll();

	Category save(Category category);

	Category update(Category category);

	boolean deleteById(Integer id);

}
