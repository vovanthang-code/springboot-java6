package com.vvt.service;

import java.util.List;

import com.vvt.entity.Account;

public interface AccountService {
	Account findById(String username);

	List<Account> getAdministrators();

	List<Account> findAll();
}
