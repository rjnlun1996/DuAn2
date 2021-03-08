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
		return productRepository.findAll();
	}

	@Override
	public Product findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Product save(Product entity) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Product update(Product entity) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean deleteById(Integer id) {
		productRepository.setEnabledFalse(id);
		return true;
	}

	@Override
	public List<Product> findAllByEnabledTrue() {
		// TODO Auto-generated method stub
		return productRepository.findByEnabledTrue();
	}
}
