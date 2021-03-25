package com.hitech.services;

import java.util.List;

import com.hitech.entities.Producer;

public interface ProducerService extends IBaseService<Producer, String>{
	
	List<Producer> findAllByEnabledTrue();
	
	Producer findById(String id);
	
	boolean deleteByEnable(String id);
}
