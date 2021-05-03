package com.hitech.services;

import java.util.List;


import com.hitech.entities.StatusOrder;



public interface StatusOrderService extends IBaseService<StatusOrder, Integer> {
	
	List<StatusOrder> findAllByEnabledTrue();
	
	List<StatusOrder> findAllByEnabledTrueAndCurrentTrue();
	List<StatusOrder> findAllByOrderIdAndEnabledTrue(Integer orderId);
 	boolean deleteByEnabled(Integer id);
 	List<StatusOrder> findByOrderIdAndCurrentTrue(Integer orderId);
}
