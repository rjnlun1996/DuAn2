package com.hitech.services;

import java.util.List;

import com.hitech.entities.Status;



public interface StatusService extends IBaseService<Status, String> {
	
	List<Status> findAllStatusByEnabledTrue();
	
	boolean deleteByEnabled(String id);
	
	Status findByNameAndEnabledTrue(String name);

}
