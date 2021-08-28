package com.vvt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vvt.dao.AccountDAO;
import com.vvt.dao.AuthorityDAO;
import com.vvt.entity.Account;
import com.vvt.entity.Authority;
import com.vvt.service.AuthorityService;

@Service
public class AuthorityServiceImpl implements AuthorityService{
	@Autowired AuthorityDAO authorityDAO;
	@Autowired AccountDAO accountDAO;
	
	@Override
	public List<Authority> findAll() {
		return authorityDAO.findAll();
	}

	@Override
	public Authority create(Authority authority) {
		return authorityDAO.save(authority);
	}

	@Override
	public void delete(Integer id) {
		authorityDAO.deleteById(id);
	}
	 
	@Override
	public List<Authority> findAuthoritiesOfAdministrators() {
		List<Account> accounts = accountDAO.getAdministrators();
		return authorityDAO.authoritiesOf(accounts);
	}
}
