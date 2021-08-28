package com.vvt.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vvt.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, Integer>{

}
