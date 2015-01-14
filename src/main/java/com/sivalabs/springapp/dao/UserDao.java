package com.sivalabs.springapp.dao;

import com.sivalabs.springapp.entities.User;

import java.util.List;

public interface UserDao {
    List<User> findAll();
    User create(User user);
    User findUserById(int id);
    User login(String email, String password);
}
