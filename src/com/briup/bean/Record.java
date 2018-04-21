package com.briup.bean;

/**
 * 销售订单
 */
public class Record {
	// 订单编号
	private Long rid;
	// 图书编号
	private String bookId;
	// 图书名字
	private String bookName;
	// 出售价格
	private String salePrice;
	// 出售数量
	private String saleNum;
	// 客户姓名
	private Long customer;
	// 添加时间
	private String addTime;

	public Record() {
	}

	public Record(Long rid, String bookId, String bookName, String salePrice,
			String saleNum, Long customer, String addTime) {
		this.rid = rid;
		this.bookId = bookId;
		this.bookName = bookName;
		this.salePrice = salePrice;
		this.saleNum = saleNum;
		this.customer = customer;
		this.addTime = addTime;
	}

	public Long getRid() {
		return rid;
	}

	public void setRid(Long rid) {
		this.rid = rid;
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

	public String getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(String salePrice) {
		this.salePrice = salePrice;
	}

	public String getSaleNum() {
		return saleNum;
	}

	public void setSaleNum(String saleNum) {
		this.saleNum = saleNum;
	}

	public Long getCustomer() {
		return customer;
	}

	public void setCustomer(Long customer) {
		this.customer = customer;
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	@Override
	public String toString() {
		return "Record [rid=" + rid + ", bookId=" + bookId + ", bookName="
				+ bookName + ", salePrice=" + salePrice + ", saleNum="
				+ saleNum + ", customer=" + customer + ", addTime=" + addTime
				+ "]";
	}

}
