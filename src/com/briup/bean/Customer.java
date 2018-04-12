package com.briup.bean;

public class Customer {
	private Long id;
	private String name;
	private String gender;
	private String cardid;
	private String phoneNum;
	private String qqNum;
	private String address;
	private String remark;
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

	public Customer(Long id, String name, String gender, String cardid,
			String phoneNum, String qqNum, String address, String remark) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.cardid = cardid;
		this.phoneNum = phoneNum;
		this.qqNum = qqNum;
		this.address = address;
		this.remark = remark;
	}

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

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", gender=" + gender
				+ ", cardid=" + cardid + ", phoneNum=" + phoneNum + ", qqNum="
				+ qqNum + ", address=" + address + ", remark=" + remark + "]";
	}
	
	
	
	
	
}
