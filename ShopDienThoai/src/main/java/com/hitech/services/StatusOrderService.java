package com.hitech.services;

import java.util.List;


import com.hitech.entities.StatusOrder;



public interface StatusOrderService extends IBaseService<StatusOrder, Integer> {
	
	List<StatusOrder> findAllStatusOrderByEnabledTrue();
	
	boolean deleteByEnabled(Integer id);

}
