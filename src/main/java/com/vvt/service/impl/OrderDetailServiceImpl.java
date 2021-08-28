package com.vvt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vvt.dao.OrderDetailDAO;
import com.vvt.entity.OrderDetail;
import com.vvt.service.OrderDetailService;

@Service
public class OrderDetailServiceImpl implements OrderDetailService{
	@Autowired OrderDetailDAO dao;
	
	@Override
	public List<OrderDetail> findByOrderId(Long id) {
		return dao.findByOrderId(id);
	}

}
