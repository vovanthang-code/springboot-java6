package com.vvt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vvt.dao.RoleDAO;
import com.vvt.entity.Role;
import com.vvt.service.RoleService;
@Service
public class RoleServiceImpl implements RoleService{
	@Autowired RoleDAO dao;
	@Override
	public List<Role> findAll() {
		return dao.findAll();
	}

}
