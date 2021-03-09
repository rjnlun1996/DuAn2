package com.hitech.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Discount;
import com.hitech.entities.Product;
import com.hitech.repository.DiscountRepository;
import com.hitech.repository.ProductRepository;
import com.hitech.services.DiscountService;
import com.hitech.utils.SessionUtils;

@Service
public class IDiscountService implements DiscountService {

	@Autowired
	private DiscountRepository discountRepository;
	
	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private SessionUtils sessionUtils;
	
	@Override
	public List<Discount> findAll() {
		return discountRepository.findAll();
	}

	@Override
	public Discount findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Discount save(Discount discount) {
		Product pt = productRepository.getOne(discount.getProduct().getId());
		discount.setProduct(pt);
		
		discount.setCreatedAt(new Date());
		discount.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		return discountRepository.save(discount);
	}

	@Override
	public Discount update(Discount entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Discount> findByEnabledTrue() {
		return discountRepository.findByEnabledTrue();
	}

}
