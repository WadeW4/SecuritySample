package com.wade.security.sample2.entity;

import com.wade.security.sample2.model.Users;

public interface LoginDao {
    Users findByUserName(String username);
}
