package com.hitech.services;

import java.util.List;

import com.hitech.entities.Product;

public interface ProductService {
	List<Product> findAll();
	void delete(int id);
}
