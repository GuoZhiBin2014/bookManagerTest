package com.briup.bean;

/**
 * 图书类别
 */
public class Category {
	private Long id;
	private String name;
	private String addtime;

	public Category() {
	}

	public Category(Long id, String name, String addtime) {
		super();
		this.id = id;
		this.name = name;
		this.addtime = addtime;
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

	public String getAddtime() {
		return addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", addtime=" + addtime
				+ "]";
	}

}
