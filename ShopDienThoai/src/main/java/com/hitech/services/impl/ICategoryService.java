package com.hitech.services.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.hitech.entities.Category;
import com.hitech.repository.CategoryRepository;
import com.hitech.services.CategoryService;

@Transactional
public class ICategoryService implements CategoryService {
	
	// hibernate ==> SQL old java5
	// JPARepository == DAO ==> hibernate ==> SQL
//	@Autowired
//	SessionFactory factory;
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public Category findById(Integer id) {	
		return categoryRepository.findById(id).orElse(null);
//		Session session = factory.getCurrentSession();
//		Category category = session.find(Category.class, id);
//		return category;
	}

	@Override
	public List<Category> findAll() {
		return categoryRepository.findAll();
//		String hql = "FROM Category";
//		Session session = factory.getCurrentSession();
//		TypedQuery<Category> query = session.createQuery(hql, Category.class);
//		List<Category> list = query.getResultList();
//		return list;
	}

	@Override
	public Category save(Category category) {
		return categoryRepository.save(category);
//		Session session = factory.getCurrentSession();
//		session.save(category);
//		return category;
	}

	@Override
	public Category update(Category category) {
		return categoryRepository.saveAndFlush(category);
//		Session session = factory.getCurrentSession();
//		session.update(category);
//		return categoryRepository.save(category);
	}

	@Override
	public boolean deleteById(Integer id) {
		try {
			categoryRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			return false;
		}
//		Session session = factory.getCurrentSession();
//		Category category = session.find(Category.class, id);
//		session.delete(category);
//		return category;
	}

}
