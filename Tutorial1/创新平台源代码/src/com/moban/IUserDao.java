package com.moban;

import java.util.List;

import com.moban.User;

public interface IUserDao {
	public void add(User user);
	public void delete(int id);
	public void update(User user);
	public User load(int id);
	public User load(String psername);
	public List<User> load();
	
}
