package com.vvt.service;

import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;
import com.vvt.entity.Order;

public interface OrderService {

	Order create(JsonNode orderData);

	Order findById(Long id);

	List<Order> findByUsername(String username);

	List<Order> findAll();

	List<Order> findByDay(Integer date);
}
