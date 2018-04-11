package com.briup.service;

import java.util.List;

import com.briup.bean.User;
import com.briup.common.exception.UserServiceException;

public interface IUserService {
	
	public void register(User user,String authCode,String repassword) throws UserServiceException;

	public User findUserByName(String name) throws UserServiceException;
	
	public User login(String name,String password) throws UserServiceException;
	
	public void update(User user,String repassword,String authCode) throws UserServiceException;
	
	public void passwd(String nickname,String answer,String password,String repassword) throws UserServiceException;

	public List<User> selectAllAdmin() throws UserServiceException;
}
