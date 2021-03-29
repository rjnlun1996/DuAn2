package com.hitech.services;

import java.util.List;

import com.hitech.entities.Product;


public interface ProductService extends IBaseService<Product, Integer> {
	List<Product> findAllByEnabledTrue();
	boolean deleteByEnable(Integer id);
	Product findById(Integer id);
	Product findAllByName(String name);
	
	List<Product> findAllHaveSamePrice(long price);
	
	List<Product> findSaleProduct();
}
