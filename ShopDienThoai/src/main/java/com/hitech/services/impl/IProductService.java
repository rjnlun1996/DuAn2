package com.hitech.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Product;
import com.hitech.repository.ProductRepository;
import com.hitech.services.ProductService;

@Service
public class IProductService implements ProductService{
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public List<Product> findAll(){
		List<Product> list= productRepository.findByEnabledTrue();
		return list;
	}
	@Override
	public void delete(int id) {
		 productRepository.setEnabledFalse(id);
	}
}
