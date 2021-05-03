package com.hitech.services;

import java.util.List;

import com.hitech.entities.Producer;

public interface ProducerService extends IBaseService<Producer, String>{
	
	List<Producer> findAllByEnabledTrue();
	
	Producer findById(String id);
	
	Producer findByName(String name);
	
	Producer findByEmail(String email);
	
	boolean deleteByEnable(String id);
}
