package com.hitech.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Account;
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
		return discountRepository.findById(id).orElse(null);
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
	public Discount update(Discount discount) {
		Discount dis = discountRepository.getOne(discount.getId());
		discount.setUpdatedAt(new Date());
		discount.setUpdatedBy(sessionUtils.getCreatedOrUpdatedBy());
		if (dis == null) return null;
		return discountRepository.saveAndFlush(dis);
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

	@Override
	public boolean deleteByEnabled(Integer id) {
		try {
			Discount dis = discountRepository.getOne(id);
			if (dis == null)
				return false;
			dis.setEnabled(false);
			discountRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	private void transformIsCurrent(Discount disc) {
		if(disc.isCurrent()) {
			discountRepository.findByIdAndCurrentTrue(null)
		}
	}

}
