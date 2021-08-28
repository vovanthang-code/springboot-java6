package com.vvt.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.vvt.dao.OrderDAO;
import com.vvt.dao.OrderDetailDAO;
import com.vvt.entity.Order;
import com.vvt.entity.OrderDetail;
import com.vvt.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
	@Autowired OrderDAO orderdao;
	@Autowired OrderDetailDAO orderDetaildao;
	
	@Override
	public Order create(JsonNode orderData) {
ObjectMapper mapper = new ObjectMapper();
		
		Order order = mapper.convertValue(orderData, Order.class);
		orderdao.save(order);
		
		TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>() {
		};
		List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
					.stream()
					.peek(d -> d.setOrder(order)).collect(Collectors.toList());
		orderDetaildao.saveAll(details);
		return order;
	}

	@Override
	public Order findById(Long id) {
		return orderdao.findById(id).get();
	}

	@Override
	public List<Order> findByUsername(String username) {
		return orderdao.findByUsername(username);
	}

	@Override
	public List<Order> findAll() {
		return orderdao.findAll();
	}

	@Override
	public List<Order> findByDay(Integer date) {
		return orderdao.findByAllDay(date);
	}


}
