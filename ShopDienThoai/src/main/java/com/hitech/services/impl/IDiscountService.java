package com.hitech.services.impl;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Category;
import com.hitech.entities.Discount;
import com.hitech.entities.OrderDetail;
import com.hitech.entities.Product;
import com.hitech.repository.DiscountRepository;
import com.hitech.repository.OrderDetailRepository;
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
	
	@Autowired
	private OrderDetailRepository orderDetailRepository;

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
		transformCurrent(discount);
		return discountRepository.save(discount);
	}

	@Override
	public Discount update(Discount discount) {
		discount.setUpdatedAt(new Date());
		discount.setUpdatedBy(sessionUtils.getCreatedOrUpdatedBy());
		transformCurrent(discount);
		return discountRepository.saveAndFlush(discount);
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

	private void transformCurrent(Discount disc) {
		if (disc.isCurrent()) {
			List<Discount> discounts = discountRepository
					.getDiscountByCurrentTrueAndProductId(disc.getProduct().getId());
			for (Discount discount : discounts) {
				discount.setCurrent(false);
				discountRepository.saveAndFlush(discount);
			}

		}
	}

	@Override
	public List<Discount> findByProductId(int id) {
		return discountRepository.getDiscountByCurrentTrueAndProductId(id);
	}

	@Override
	public boolean checkExistedForeign(Integer id) {

		// Get danh sách khóa ngoại (OrderDetail)
		List<OrderDetail> orderDetails = orderDetailRepository.findByDiscountIdAndEnabledTrue(id);

		// Kiểm tra nếu khóa ngoại đang liên kết dự liệu
		if (orderDetails != null && !orderDetails.isEmpty() && orderDetails.size() > 0) {
			return true;
		}
		return false;
	}

}
