package com.hitech.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Category;
import com.hitech.entities.Photo;
import com.hitech.repository.PhotoRepository;
import com.hitech.services.PhotoService;

@Service
public class IPhotoService implements PhotoService{

	@Autowired
	private PhotoRepository photoRepository;
	
	@Override
	public List<Photo> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Photo findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Photo save(Photo entity) {
		return photoRepository.save(entity);
	}

	@Override
	public Photo update(Photo entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(Integer id) {
		try {
			photoRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	

	@Override
	public List<Photo> findAllByEnabledTrueAndProduct(int productId) {
		return photoRepository.findByProduct(productId);
	}

	@Override
	public boolean deleteByEnabled(Integer id) {
		try {
			photoRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			return false;
		}

}
}
