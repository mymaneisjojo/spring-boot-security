package com.example.demo.service;

import com.example.demo.model.Account;

import java.util.List;

public interface AccountService {
    Account login(Account account);

    List<Account> list();


}
