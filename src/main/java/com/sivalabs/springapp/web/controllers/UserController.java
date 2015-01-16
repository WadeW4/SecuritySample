package com.sivalabs.springapp.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sivalabs.springapp.entities.User;
import com.sivalabs.springapp.services.UserService;
import com.sivalabs.springapp.web.config.SecurityUser;

@Controller
public class UserController {
    private static UserService userService;

    @RequestMapping(value = { "/" })
    public String getUserDefault() {
        return "index";
    }

    @RequestMapping(value = { "/welcome" })
    public String welcome() {
        return "welcome";
    }

    @Autowired
    public void setUserService(UserService userService) {
        UserController.userService = userService;
    }

    public static User getCurrentUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            String email = ((UserDetails) principal).getUsername();
            User loginUser = userService.findUserByEmail(email);
            return new SecurityUser(loginUser);
        }

        return null;
    }
}
