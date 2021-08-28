package com.vvt.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.vvt.entity.Product;

public interface ProductSerivce {

	Page<Product> findAll(Pageable pageable);
	
	List<Product> findAll();
	
	Product findById(Integer id);

	Page<Product> findByCategoryId(String cid,Pageable pageable);

	Product create(Product product);

	Product update(Product product);

	void delete(Integer id);
	
}
