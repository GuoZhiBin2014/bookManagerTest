package com.briup.bean;

import java.io.Serializable;
/**
 * 入库订单
 */
public class Storage implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	private String bookId;
	private String bookName;
	private int snumber;
	private String stime;
	private String operator;
	public Storage() {
	}
	public Storage(long id, String bookId, String bookName, int snumber,
			String stime, String operator) {
		super();
		this.id = id;
		this.bookId = bookId;
		this.bookName = bookName;
		this.snumber = snumber;
		this.stime = stime;
		this.operator = operator;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public int getSnumber() {
		return snumber;
	}
	public void setSnumber(int snumber) {
		this.snumber = snumber;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Storage [id=" + id + ", bookId=" + bookId + ", bookName="
				+ bookName + ", snumber=" + snumber + ", stime=" + stime
				+ ", operator=" + operator + "]";
	}
	
	
	
}
