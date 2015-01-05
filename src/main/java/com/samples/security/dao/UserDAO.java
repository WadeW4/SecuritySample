package com.samples.security.dao;

import com.samples.security.model.User;

public interface UserDAO {
	
	public User getUser(String login);

}
