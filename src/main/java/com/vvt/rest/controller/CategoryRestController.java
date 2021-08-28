package com.vvt.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vvt.entity.Category;
import com.vvt.service.CategoryService;

@CrossOrigin("*")
@RestController
@RequestMapping("rest/categories")
public class CategoryRestController {
	@Autowired CategoryService categporySerivce;
	
	@GetMapping()
	public List<Category> getAll() {
		return categporySerivce.findAll();
	}
}
