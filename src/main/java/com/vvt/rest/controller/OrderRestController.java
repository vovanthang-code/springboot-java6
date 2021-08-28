package com.vvt.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;
import com.vvt.entity.Order;
import com.vvt.service.OrderService;
@CrossOrigin("*")
@RestController
@RequestMapping("rest/orders")
public class OrderRestController {
	@Autowired OrderService orderService;
	
	@GetMapping
	public List<Order> getAll() {
		return orderService.findAll();
	}
	@GetMapping("{date}")
	public List<Order> getDate(@PathVariable("date") Integer date) {
		return orderService.findByDay(date);
	}
	
	@PostMapping()
	public Order create(@RequestBody JsonNode orderData) {
		return orderService.create(orderData);
	}
}
