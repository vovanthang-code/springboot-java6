package com.vvt.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.vvt.dao.ProductDAO;
import com.vvt.entity.Product;
import com.vvt.service.ProductSerivce;

@Service
public class ProductServiceImpl implements ProductSerivce{
	@Autowired ProductDAO productDAO;

	@Override
	public Page<Product> findAll(Pageable pageable) {
		return productDAO.findAll(pageable);
	}

	@Override
	public Product findById(Integer id) {
		return productDAO.findById(id).get();
	}

	@Override
	public Page<Product> findByCategoryId(String cid,Pageable pageable) {
		return productDAO.findByCategoryId(cid,pageable);
	}

	@Override
	public Product create(Product product) {
		return productDAO.save(product);
	}

	@Override
	public Product update(Product product) {
		return productDAO.save(product);
	}

	@Override
	public void delete(Integer id) {
		 productDAO.deleteById(id);
	}

	@Override
	public List<Product> findAll() {
		return productDAO.findAll();
	}

}
