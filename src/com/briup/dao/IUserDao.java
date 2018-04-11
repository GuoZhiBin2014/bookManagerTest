package com.briup.dao;

import java.util.List;

import com.briup.bean.User;
import com.briup.common.exception.DataAccessException;

public interface IUserDao {
	
	public void addUser(User user)throws DataAccessException;
	
	public User findUserByName(String name) throws DataAccessException;
	
	public void updateUser(User user) throws DataAccessException;
	
	public List<User> selectAllAdmin() throws DataAccessException;
	
}
