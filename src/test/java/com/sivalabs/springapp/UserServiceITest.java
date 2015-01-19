/**
 *
 */
package com.sivalabs.springapp;

import com.sivalabs.springapp.config.AppConfig;
import com.sivalabs.springapp.entities.User;
import com.sivalabs.springapp.services.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = AppConfig.class)
public class UserServiceITest {
    @Autowired
    private UserService userService;

    @Test
    public void findAllUsers() {
        List<User> users = userService.findAll();
        assertNotNull(users);
        assertTrue(!users.isEmpty());
    }

    @Test
    public void findUserById() {
        User user = userService.findUserById(1);
        assertNotNull(user);
    }

    @Test
    public void createUser() {
        User user = new User(0, "Siva", "siva@gmail.com", "siva", null);
        User savedUser = userService.create(user);
        User newUser = userService.findUserById(savedUser.getId());
        assertEquals("Siva", newUser.getName());
        assertEquals("siva@gmail.com", newUser.getEmail());
        userService.deleteUser(newUser.getId());
    }

}
