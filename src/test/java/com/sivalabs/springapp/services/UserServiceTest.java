package com.sivalabs.springapp.services;

import static org.mockito.Matchers.any;
import static org.mockito.Mockito.verify;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.sivalabs.springapp.entities.User;
import com.sivalabs.springapp.repositories.UserRepository;

public class UserServiceTest {
    @Mock
    UserRepository mockRepository;
    private UserService testObject;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
        testObject = new UserService();
        testObject.setUserRepository(mockRepository);
    }

    @Test
    public void testFindAll() {
        testObject.findAll();
        verify(mockRepository).findAll();
    }

    @Test
    public void testCreate() {
        testObject.create(new User());
        verify(mockRepository).save(any(User.class));
    }

    @Test
    public void testFindUserById() {
        testObject.findUserById(1);
        verify(mockRepository).findOne(any(Integer.class));
    }

    @Test
    public void testLogin() {
        testObject.login("", "");
        verify(mockRepository).findByEmailAndPassword(any(String.class), any(String.class));
    }

    @Test
    public void testUpdate() {
        testObject.update(new User());
        verify(mockRepository).save(any(User.class));
    }

    @Test
    public void testDeleteUser() {
        testObject.deleteUser(1);
        verify(mockRepository).delete(any(Integer.class));
    }

    @Test
    public void testFindUserByEmail() {
        testObject.findUserByEmail("");
        verify(mockRepository).findUserByEmail(any(String.class));
    }

}
