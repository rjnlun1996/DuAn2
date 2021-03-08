package com.hitech.services;

import java.util.List;

import com.hitech.entities.Producer;

public interface ProducerService extends IBaseService<Producer, Integer>{
	List<Producer> findAllByEnabledTrue();
	Producer findById(Integer id);
	boolean deleteByEnable(Integer id);
}
