package com.hitech.services;

import java.util.List;

public interface IBaseService<T, ID> {
	
	List<T> findAll();	

	T findById(ID id);
	
	T save(T entity);
	
	T update(T entity);
	
	boolean deleteById(ID id);

}
