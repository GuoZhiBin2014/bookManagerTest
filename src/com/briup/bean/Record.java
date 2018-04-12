package com.briup.bean;

public class Record {
	private Long rid;
	private String bookId;
	private String bookName;
	private String category;
	private String salePrice;
	private String saleNum;
	// 利润
	private String profit;

	public Record() {
	}

	public Record(Long rid, String bookId, String bookName, String category,
			String salePrice, String saleNum, String profit) {
		super();
		this.rid = rid;
		this.bookId = bookId;
		this.bookName = bookName;
		this.category = category;
		this.salePrice = salePrice;
		this.saleNum = saleNum;
		this.profit = profit;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getProfit() {
		return profit;
	}

	public void setProfit(String profit) {
		this.profit = profit;
	}

	@Override
	public String toString() {
		return "Record [rid=" + rid + ", bookId=" + bookId + ", bookName="
				+ bookName + ", category=" + category + ", salePrice="
				+ salePrice + ", saleNum=" + saleNum + ", profit=" + profit
				+ "]";
	}

}
