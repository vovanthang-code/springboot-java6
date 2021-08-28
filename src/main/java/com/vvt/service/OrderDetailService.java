package com.vvt.service;

import java.util.List;

import com.vvt.entity.OrderDetail;

public interface OrderDetailService {

	List<OrderDetail> findByOrderId(Long id);

}
