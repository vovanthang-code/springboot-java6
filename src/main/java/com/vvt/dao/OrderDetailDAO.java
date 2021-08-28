package com.vvt.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vvt.entity.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
	@Query("select o from OrderDetail o where o.order.id = ?1")
	List<OrderDetail> findByOrderId(Long id);

}
