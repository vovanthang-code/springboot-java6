package com.vvt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vvt.dao.AccountDAO;
import com.vvt.entity.Account;
import com.vvt.service.AccountService;
@Service
public class AccountServiceImpl implements AccountService{
	@Autowired AccountDAO accountDAO;
	
	@Override
	public Account findById(String username) {
		return accountDAO.findById(username).get();
	}

	@Override
	public List<Account> getAdministrators() {
		return accountDAO.getAdministrators();
	}

	@Override
	public List<Account> findAll() {
		return accountDAO.findAll();
	}

}
