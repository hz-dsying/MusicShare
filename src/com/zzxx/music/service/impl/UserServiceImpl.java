package com.zzxx.music.service.impl;

import java.util.List;
import java.util.UUID;

import com.zzxx.music.beans.Message;
import com.zzxx.music.beans.Tweet;
import com.zzxx.music.beans.User;
import com.zzxx.music.dao.UserDao;
import com.zzxx.music.service.UserService;
import com.zzxx.music.utils.FactoryUtils;

public class UserServiceImpl implements UserService {
	UserDao ud = (UserDao)FactoryUtils.getInstance("UserDao");

	/**
	 * 通过邮箱查找用户是否存在
	 * 若存在，返回true
	 * 若不存在，返回false
	 */
	public boolean checkUserIsExists(String email) {
		User user = ud.findUserByEmail(email);
		if(user == null) {
			return false;
		}else {
			return true;
		}
	}

	/**
	 * 用户登录
	 * email为邮箱地址
	 * password为密码
	 */
	public User login(String email, String password) {
		User user = ud.getUserByEmailAndPassword(email, password);
		if(user != null) {
			// 登录成功，返回user
			return user;
		}else {
			// 登录失败，返回异常信息
			throw new RuntimeException("用户名/密码错误");
		}
	}
	
	/**
	 * 用户注册
	 * 注册成功后将user返回
	 */
	public User register(User user) {
		String uid = UUID.randomUUID().toString();
		user.setUuid(uid.replace("-", "")); 
		User u = ud.addUser(user);
		return u;
	}

	/**
	 * 查找所有的用户
	 */
	public List<User> findAllUser() {
		List<User> allUser = ud.getAllUsers();
		return allUser;
	}

	/**
	 * 根据id查找用户
	 */
	public User findUserById(String id) {
		User user = ud.findUserById(id);
		return user;
	}

	/**
	 * 通过用户id
	 * 返回用户留言list
	 */
	public List<Message> findUserMessage(User user) {
		// List<Message> list = ud.getUserMessage(user);
		// return list;
		return null;
	}

	/**
	 * 根据用户id找到用户动态
	 */
	public List<Tweet> findUserTweet(User user) {
		// List<Tweet> list = ud.getUserTweet(user);
		// return list;
		return null;
	}

	/**
	 * 存用户动态
	 */
	public void saveUserTweet(User user, Tweet tweet) {
		// ud.addTweet(user, tweet);	
	}

	/**
	 * 存用户留言
	 */
	public void saveUserMessage(User user, Message message) {
		// ud.addMessage(user, message);
	}
	
	

}
