package com.vvt.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vvt.entity.Product;

public interface ProductDAO extends JpaRepository<Product, Integer>{
	@Query("select p from Product p where p.category.id=?1")
	Page<Product> findByCategoryId(String cid,Pageable pageable);

}
