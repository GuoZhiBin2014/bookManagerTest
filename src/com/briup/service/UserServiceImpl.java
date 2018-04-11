package com.briup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.User;
import com.briup.common.exception.DataAccessException;
import com.briup.common.exception.UserServiceException;
import com.briup.common.util.MD5;
import com.briup.dao.IUserDao;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Autowired
	private IUserDao userDao;
	User user = null;
	

	@Override
	public void register(User user, String authCode, String repassword)
			throws UserServiceException {
		try {
			// 密码验证
			if (!repassword.equals(user.getPassword())) {
				throw new UserServiceException("两次输入密码不同!");
			}
			// 用户名验证
			User userByName = userDao.findUserByName(user.getNickname());
			if (userByName != null) {
				throw new UserServiceException("用户名已存在!");
			}
			// 密码加密
			String newpasswd = MD5.getMD5Str(user.getPassword());
			user.setPassword(newpasswd);

			userDao.addUser(user);

		} catch (NullPointerException e) {
			e.printStackTrace();
			throw new UserServiceException("填写信息不全,请补充");
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new UserServiceException("注册数据访问异常");
		}

	}

	@Override
	public User findUserByName(String name) throws UserServiceException {

		try {
			user = userDao.findUserByName(name);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new UserServiceException("查询用户数据访问异常");
		}
		return user;
	}

	@Override
	public User login(String name, String password) throws UserServiceException {
		try {
			user = userDao.findUserByName(name);
			// 查看登陆的用户名是否存在
			if (user == null) {
				throw new UserServiceException("用户不存在!");
			}
			String passwordStr = MD5.getMD5Str(password);
			if (!passwordStr.equals(user.getPassword())) {
				throw new UserServiceException("密码输入错误");
			}
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new UserServiceException("登录失败" + e.getMessage());
		}
		return user;
	}

	@Override
	public void update(User user, String repassword, String authCode)
			throws UserServiceException {
		System.out.println(user.toString()+repassword+authCode);
		User userByName;
		try {
			
			// 密码验证
			if (!repassword.equals(user.getPassword())) {
				throw new UserServiceException("两次输入密码不同!");
			}
			userByName = userDao.findUserByName(user.getNickname());
			user.setPassword(MD5.getMD5Str(user.getPassword()));
			if (!userByName.getPassword().equals(user.getPassword())) {
				throw new UserServiceException("输入密码错误!");
			}
			userDao.updateUser(user);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new UserServiceException("数据访问异常");
		}

	}

	@Override
	public void passwd(String nickname, String answer, String password, String repassword) throws UserServiceException {
		try {
			if(answer==null||password==null||repassword==null){
				throw new UserServiceException("未填写相关全部信息");
			}
			if(!password.equals(repassword)){
				throw new UserServiceException("两次密码输入不同");
			}
			User userByName = userDao.findUserByName(nickname);
			if(!userByName.getAnswer().equals(answer)){
				throw new UserServiceException("密码提示问题答案错误");
			}
			userByName.setPassword(MD5.getMD5Str(password));
			userDao.updateUser(userByName);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new UserServiceException("数据访问异常");
		}
		
	}

	@Override
	public List<User> selectAllAdmin() throws UserServiceException {
		List<User> adminList = null;
		try {
			adminList = userDao.selectAllAdmin();
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return adminList;
		
		
	}
	
	
	
}






