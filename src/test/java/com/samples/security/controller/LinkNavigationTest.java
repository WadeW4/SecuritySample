package com.samples.security.controller;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;

public class LinkNavigationTest {
    private LinkNavigation test;

    @Before
    public void setUp() throws Exception {
        test = new LinkNavigation();
    }

    @Test
    public void testHomePage() {
        ModelAndView result = test.homePage();
        assertEquals("home", result.getViewName());
    }

    @Test
    public void testIndexPage() {
        ModelAndView result = test.indexPage();
        assertEquals("home", result.getViewName());
    }

    @Test
    public void testModeratorPage() {
        ModelAndView result = test.moderatorPage();
        assertEquals("moderation", result.getViewName());
    }

    @Test
    public void testFirstAdminPage() {
        ModelAndView result = test.firstAdminPage();
        assertEquals("admin-first", result.getViewName());
    }

    @Test
    public void testSecondAdminPage() {
        ModelAndView result = test.secondAdminPage();
        assertEquals("admin-second", result.getViewName());
    }

}
