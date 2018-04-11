package com.briup.bean;

import java.io.Serializable;

public class Book implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long bookId;
	private String name;
	private String category;
	private String press;
	private String bDate;
	private String author;
	private String price;
	private String info;
	private int inventory;

	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book(Long bookId, String name, String category, String press,
			String bDate, String author, String price, String info) {
		super();
		this.bookId = bookId;
		this.name = name;
		this.category = category;
		this.press = press;
		this.bDate = bDate;
		this.author = author;
		this.price = price;
		this.info = info;
	}

	public Long getBookId() {
		return bookId;
	}

	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPress() {
		return press;
	}

	public void setPress(String press) {
		this.press = press;
	}

	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
		this.bDate = bDate;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	@Override
	public String toString() {
		return "Book [bookId=" + bookId + ", name=" + name + ", category="
				+ category + ", press=" + press + ", bDate=" + bDate
				+ ", author=" + author + ", price=" + price + ", info=" + info
				+ ", inventory=" + inventory + "]";
	}

}
