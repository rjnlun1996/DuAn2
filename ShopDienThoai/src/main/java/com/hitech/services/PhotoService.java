package com.hitech.services;

import java.util.List;

import com.hitech.entities.Photo;
import com.hitech.entities.Product;

public interface PhotoService extends IBaseService<Photo, Integer>{
	
	List<Photo> findAllByEnabledTrueAndProduct(int productId);
    boolean deleteByEnabled(Integer id);   
    
}
