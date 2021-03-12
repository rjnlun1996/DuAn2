package com.hitech.services.impl;

import java.util.Date;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Status;
import com.hitech.repository.StatusRepository;
import com.hitech.services.StatusService;
import com.hitech.utils.SessionUtils;

@Service
public class IStatusService implements StatusService {
	

	
	@Autowired
	private SessionUtils sessionUtils;
	
	@Autowired
	private StatusRepository statusRepository;
 

	@Override
	public Status findById(String id) {
	
		return statusRepository.findById(id).orElse(null);
	}

	@Override
	public Status save(Status status) {
		status.setCreatedAt(new Date());
		status.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		return statusRepository.save(status);
	}

	@Override
	public Status update(Status status) {
		
		return statusRepository.saveAndFlush(status);
	}

	@Override
	public boolean deleteById(String id) {
		try {
			statusRepository.deleteById(id);
			return true;
		}
		catch(Exception e){
			return false;
		}
		
	}

	@Override
	public boolean deleteByEnabled(String id) {
		try {
			Status status = statusRepository.getOne(id);
			if(status == null) {
				return false;
			}
			status.setEnabled(false);
			statusRepository.saveAndFlush(status);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<Status> findAll() {
		
		return statusRepository.findAll();
	}

	@Override
	public List<Status> findAllStatusByEnabledTrue() {
		
		return statusRepository.findByEnabledTrue();
	}

	@Override
	public Status findByNameAndEnabledTrue(String name) {
		return statusRepository.findByNameAndEnabledTrue(name);
	}
   

}
