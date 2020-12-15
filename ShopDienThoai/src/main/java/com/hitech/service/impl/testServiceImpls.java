package com.hitech.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.dao.testDao;
import com.hitech.entities.Product;
import com.hitech.service.TestService;

@Service
public class testServiceImpls implements TestService{
	@Autowired
	private testDao dao;
	@Override
	public com.hitech.entities.Product findById(int id) {
		Product productFromDb = dao.findById(id);
		if (productFromDb== null) {
			return null;
		}
		Product product = new Product();
		product.setAvailable(productFromDb.isAvailable());
		product.setCategory(productFromDb.getCategory());
		product.setCreatedAt(productFromDb.getCreatedAt());
		product.setCreatedBy(productFromDb.getCreatedBy());
		product.setDate(productFromDb.getDate());
		product.setDescription(productFromDb.getDescription());
		product.setDiscount(productFromDb.getDiscount());
		product.setEnabled(productFromDb.isEnabled());
		product.setId(productFromDb.getId());
		product.setImportPrice(productFromDb.getImportPrice());
		product.setLatest(productFromDb.isLatest());
		product.setName(productFromDb.getName());
		product.setPhoto(productFromDb.getPhoto());
		product.setQuantity(productFromDb.getQuantity());
		product.setSalePrice(productFromDb.getSalePrice());
		product.setSpecial(productFromDb.isSpecial());
		product.setUnitBrief(productFromDb.getUnitBrief());
		product.setUpdatedAt(productFromDb.getUpdatedAt());
		product.setUpdatedBy(productFromDb.getUpdatedBy());
		product.setViews(productFromDb.getViews());
		return product;
	}
}
