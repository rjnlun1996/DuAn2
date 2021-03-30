package com.hitech.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Product;
import com.hitech.repository.ProductRepository;
import com.hitech.services.ProductService;
import com.hitech.utils.SessionUtils;

@Service
public class IProductService implements ProductService{

	@Autowired
	private SessionUtils sessionUtils;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public List<Product> findAll(){
		return productRepository.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return productRepository.findById(id).orElse(null);
	}
	@Override
	public Product save(Product product) {
		product.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		product.setCreatedAt(new Date());
		return productRepository.save(product);
	}
	@Override
	public Product update(Product product) {
		product.setUpdatedBy(sessionUtils.getCreatedOrUpdatedBy());
		product.setUpdatedAt(new Date());
		return productRepository.save(product);
	}
	@Override
	public boolean deleteByEnable(Integer id) {
		try {
			Product pd = productRepository.getOne(id);
			if(pd == null) {
				return false;
			}
			pd.setEnabled(false);
			productRepository.saveAndFlush(pd);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	@Override
	public boolean deleteById(Integer id) {
		try {
			productRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<Product> findAllByEnabledTrue() {
		// TODO Auto-generated method stub
		return productRepository.findByEnabledTrue();
	}

	@Override
	public Product findAllByName(String name) {
		return productRepository.findByName(name);
	}

	@Override
	public List<Product> findAllHaveSamePrice(long price) {
		return productRepository.findAllHaveSamePrice(price - 1000000, price + 1000000);
	}

	@Override
	public List<Product> findSaleProduct() {
		// TODO Auto-generated method stub
		return productRepository.findSaleProduct();
	}
}
