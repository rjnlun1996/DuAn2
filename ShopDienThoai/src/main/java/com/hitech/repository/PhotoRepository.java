package com.hitech.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Photo;

@Repository
public interface PhotoRepository extends JpaRepository<Photo, Integer>{

}
