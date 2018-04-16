package com.briup.bean;

/**
 * 客户信息
 */
public class Customer {
	// id
	private Long id;
	// 姓名
	private String name;
	// 性别
	private String gender;
	// 身份证号
	private String cardid;
	// 联系电话
	private String phoneNum;
	// QQ号
	private String qqNum;
	// 联系地址
	private String address;

	/**
	 * constructor
	 */
	public Customer() {
	}

	public Customer(Long id, String name, String gender, String cardid,
			String phoneNum, String qqNum, String address) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.cardid = cardid;
		this.phoneNum = phoneNum;
		this.qqNum = qqNum;
		this.address = address;
	}

	/**
	 * Getters/Setters
	 */
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCardid() {
		return cardid;
	}

	public void setCardid(String cardid) {
		this.cardid = cardid;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getQqNum() {
		return qqNum;
	}

	public void setQqNum(String qqNum) {
		this.qqNum = qqNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * toString
	 */
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", gender=" + gender
				+ ", cardid=" + cardid + ", phoneNum=" + phoneNum + ", qqNum="
				+ qqNum + ", address=" + address + "]";
	}

}
