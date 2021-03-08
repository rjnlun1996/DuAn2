package com.hitech.services;

import java.util.List;

import com.hitech.entities.Product;


public interface ProductService extends IBaseService<Product, Integer> {
	List<Product> findAllByEnabledTrue();
	boolean deleteByEnable(Integer id);
	Product findById(Integer id);
}
