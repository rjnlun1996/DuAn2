package com.hitech.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Producer;
import com.hitech.repository.ProducerRepository;
import com.hitech.services.ProducerService;

@Service
public class IProducerService implements ProducerService {
	
	@Autowired
	private ProducerRepository producerRepository;

	@Override
	public List<Producer> findAll() {
		return producerRepository.findByEnabledTrue();
	}

	@Override
	public Producer findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Producer save(Producer entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Producer update(Producer entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Producer> findAllByEnabledTrue() {
		// TODO Auto-generated method stub
		return producerRepository.findByEnabledTrue();
	}
	
}
