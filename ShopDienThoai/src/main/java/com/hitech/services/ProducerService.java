package com.hitech.services;

import java.util.List;

import com.hitech.entities.Producer;

public interface ProducerService {
	public List<Producer> findAll();
	public Producer find(int id);
	public int create(Producer producer);
	public boolean update(Producer producer);
	public boolean delete(Producer producer);
	//thay đổi
	

}
