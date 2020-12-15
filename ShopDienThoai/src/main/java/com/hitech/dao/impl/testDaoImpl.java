package com.hitech.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.hitech.dao.testDao;
import com.hitech.entities.Product;

@Repository
public class testDaoImpl implements testDao{
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Product findById(int id) {
		return em.find(Product.class,id);
	}
}
