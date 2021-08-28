package com.vvt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vvt.dao.CategoryDAO;
import com.vvt.entity.Category;
import com.vvt.service.CategoryService;
@Service
public class CategoryServiceImpl implements CategoryService{
	@Autowired CategoryDAO categoryDAO;
	
	@Override
	public List<Category> findAll() {
		return categoryDAO.findAll();
	}
	
}
