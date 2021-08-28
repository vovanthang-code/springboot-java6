package com.vvt.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vvt.entity.OrderDetail;
import com.vvt.service.OrderDetailService;
@CrossOrigin("*")
@RestController
@RequestMapping("rest/orderdetail")
public class OrderDetailRestController {
	@Autowired OrderDetailService orderDetailService;
	
	@GetMapping("{id}")
	public List<OrderDetail> getOrderDetail(@PathVariable("id") Long id) {
		return orderDetailService.findByOrderId(id);
	}

}
