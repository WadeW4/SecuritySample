package com.sivalabs.springapp.web.controllers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.site.SitePreference;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sivalabs.springapp.entities.User;
import com.sivalabs.springapp.services.UserService;
import com.sivalabs.springapp.web.config.SecurityUser;

@Controller
public class UserController {
    private static final Log logger = LogFactory.getLog(UserController.class);
    @Autowired
    private UserService userService;

    @RequestMapping(value = { "/" })
    public String index(SitePreference sitePreference, Model model) {
        model.addAttribute("user", getCurrentUser());
        if (sitePreference == SitePreference.NORMAL) {
            logger.info("Site preference is normal");
            return "index";
        } else if (sitePreference == SitePreference.MOBILE) {
            logger.info("Site preference is mobile");
            return "index";
        } else if (sitePreference == SitePreference.TABLET) {
            logger.info("Site preference is tablet");
            return "inddex";
        } else {
            logger.info("no site preference");
            return "index";
        }
    }

    @RequestMapping(value = { "/welcome" })
    public String welcome(SitePreference sitePreference, Model model) {
        model.addAttribute("user", getCurrentUser());
        if (sitePreference == SitePreference.NORMAL) {
            logger.info("Site preference is normal");
            return "welcome";
        } else if (sitePreference == SitePreference.MOBILE) {
            logger.info("Site preference is mobile");
            return "welcome";
        } else if (sitePreference == SitePreference.TABLET) {
            logger.info("Site preference is tablet");
            return "welcome";
        } else {
            logger.info("no site preference");
            return "welcome";
        }
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
