package com.hitech.services.impl;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Category;
import com.hitech.entities.Producer;
import com.hitech.entities.StatusOrder;
import com.hitech.repository.ProducerRepository;
import com.hitech.services.ProducerService;
import com.hitech.utils.SessionUtils;

@Service
public class IProducerService implements ProducerService {
	

	@Autowired
	private SessionUtils sessionUtils;
	
	@Autowired
	private ProducerRepository producerRepository;

	@Override
	public List<Producer> findAll() {
		return producerRepository.findByEnabledTrueOrderByCreatedAtAsc();
	}

	@Override
	public Producer findById(String id) {
		return producerRepository.getOne(id);
	}

	@Override
	public Producer save(Producer producer) {
		producer.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		producer.setCreatedAt(new Date());
		return producerRepository.save(producer);
	}

	@Override
	public Producer update(Producer producer) {
		producer.setUpdatedBy(sessionUtils.getCreatedOrUpdatedBy());
		producer.setUpdatedAt(new Date());
		return producerRepository.save(producer);
	}

	@Override
	public boolean deleteById(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Producer> findAllByEnabledTrue() {
		// TODO Auto-generated method stub
		return producerRepository.findByEnabledTrueOrderByCreatedAtAsc();
	}

	@Override
	public boolean deleteByEnable(String id) {
		try {
			Producer pd = producerRepository.getOne(id);
			if(pd == null) {
				return false;
			}
			pd.setEnabled(false);
			producerRepository.saveAndFlush(pd);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean checkExistedForeign(String id) {
		Producer producer = producerRepository.findById(id).orElse(null);

		// Get khoa ngoai (Account)
		Set<Category> categories = producer.getCategories();

		// Kiểm tra nếu khóa ngoại đang liên kết dự liệu
		if (categories != null && !categories.isEmpty() && categories.size() > 0) {
			return true;
		}
		return false;
	}
	
}
