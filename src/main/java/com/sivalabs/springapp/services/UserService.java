/**
 *
 */
package com.sivalabs.springapp.services;

import com.sivalabs.springapp.entities.User;
import com.sivalabs.springapp.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public User create(User user) {
        return userRepository.save(user);
    }

    public User findUserById(int id) {
        return userRepository.findOne(id);
    }

    public User login(String email, String password) {
        return userRepository.findByEmailAndPassword(email, password);
    }

    public User update(User user) {
        return userRepository.save(user);
    }

    public void deleteUser(int id) {
        userRepository.delete(id);
    }

    public User findUserByEmail(String email) {
        return userRepository.findUserByEmail(email);
    }


}

