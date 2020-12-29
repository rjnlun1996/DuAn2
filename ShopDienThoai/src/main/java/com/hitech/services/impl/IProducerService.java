package com.hitech.services.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Producer;
import com.hitech.repository.ProducerRepository;
import com.hitech.services.ProducerService;

@Service
public class IProducerService implements ProducerService{
	@Autowired
	private ProducerRepository producerRepository;
	@Override
	public List<Producer> findAll() {
		List<Producer> list=producerRepository.findByEnabledTrue();
		return list;
	}
//thay đổi
	@Override
	public Producer find(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int create(Producer producer) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean update(Producer producer) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Producer producer) {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
