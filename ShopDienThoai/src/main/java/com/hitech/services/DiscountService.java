package com.hitech.services;

import java.util.List;

import com.hitech.entities.Discount;

public interface DiscountService extends IBaseService<Discount, Integer> {

	/**
	 * 
	 * @return
	 */
	List<Discount> findByEnabledTrue();
}
