package com.hitech.services;

import java.util.List;

import com.hitech.entities.Photo;

public interface PhotoService extends IBaseService<Photo, Integer>{
	
	List<Photo> findAllByEnabledTrueAndProduct(int productId);
    boolean deleteByEnabled(Integer id);
}
