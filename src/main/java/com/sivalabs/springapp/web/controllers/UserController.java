package com.sivalabs.springapp.web.controllers;

import com.sivalabs.springapp.entities.User;
import com.sivalabs.springapp.services.UserService;
import com.sivalabs.springapp.web.config.SecurityUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.site.SitePreference;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/", "/welcome"})
    public String home(SitePreference sitePreference, Model model) {
        model.addAttribute("user", getCurrentUser());
        return "welcome";
    }

    public User getCurrentUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            String email = ((UserDetails) principal).getUsername();
            User loginUser = userService.findUserByEmail(email);
            return new SecurityUser(loginUser);
        }
        return null;
    }
}

