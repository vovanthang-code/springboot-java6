package com.vvt.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vvt.entity.Product;
import com.vvt.service.ProductSerivce;

@CrossOrigin("*")
@RestController
@RequestMapping("rest/products")
public class ProductRestController {
	@Autowired ProductSerivce productSerivce;
	
	@GetMapping("{id}")
	public Product getOne(@PathVariable("id") Integer id) {
		return productSerivce.findById(id);
	}
	
	@GetMapping()
	public List<Product> getAll() {
		return productSerivce.findAll();
	}
	
	@PostMapping()
	public Product create(@RequestBody Product product) {
		return productSerivce.create(product);
	}
	@PutMapping("{id}")
	public Product update(@PathVariable("id") Integer id,@RequestBody Product product) {
		return productSerivce.update(product);
	}
	
	@DeleteMapping("{id}")
	public void delete(@PathVariable("id") Integer id) {
		productSerivce.delete(id);
	}
}
