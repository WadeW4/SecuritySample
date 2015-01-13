/**
 *
 */
package com.sivalabs.springapp.dao;

import com.sivalabs.springapp.entities.User;

import java.util.List;

/**
 * @author katsi02
 */
public interface UserDao {

    public List<User> findAll();

    public User create(User user);

    public User findUserById(int id);

    public User login(String email, String password);

}
