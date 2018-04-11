package com.briup.bean;

import java.io.Serializable;

/**
 * 用户类
 * 
 * @author GZB
 */
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	// 用户id
	private Long id;
	// 用户名
	private String nickname;
	// 密码
	private String password;
	// 电子邮箱
	private String email;
	// 找回密码的提示问题
	private String question;
	// 找回密码的提示问题的答案
	private String answer;
	// 性别
	private long gender;
	// 年龄
	private Long age;
	// 电话
	private String phone;

	public User() {

	}

	public User(Long id, String nickname, String password, String email,
			String passwordquestion, String passwordanswer, long gender,
			Long age, String phone) {
		this.id = id;
		this.nickname = nickname;
		this.password = password;
		this.email = email;
		this.question = passwordquestion;
		this.answer = passwordanswer;
		this.gender = gender;
		this.age = age;
		this.phone = phone;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public long getGender() {
		return gender;
	}

	public void setGender(long gender) {
		this.gender = gender;
	}

	public Long getAge() {
		return age;
	}

	public void setAge(Long age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nickname=" + nickname + ", password="
				+ password + ", email=" + email + ", question=" + question
				+ ", answer=" + answer + ", gender=" + gender + ", age=" + age
				+ ", phone=" + phone + "]";
	}

}
