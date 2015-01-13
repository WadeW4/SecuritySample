/**
 *
 */
package com.sivalabs.springapp.web.controllers;

import com.sivalabs.springapp.entities.User;
import com.sivalabs.springapp.services.UserService;
import com.sivalabs.springapp.web.config.SecurityUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;

/**
 * @author Siva
 */
@Controller
public class UserController {
    private static UserService userService;

    public static User getCurrentUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            String email = ((UserDetails) principal).getUsername();
            User loginUser = userService.findUserByEmail(email);
            return new SecurityUser(loginUser);
        }

        return null;
    }

    @Autowired
    public void setUserService(UserService userService) {
        UserController.userService = userService;
    }
}

