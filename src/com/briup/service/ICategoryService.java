package com.briup.service;

import java.util.List;

import com.briup.bean.Category;
import com.briup.common.exception.CategoryServiceException;

public interface ICategoryService {
	
	public List<Category> selectAll() throws CategoryServiceException;
	
	public void insert(Category category) throws CategoryServiceException;
	
	public void deleteById(String id) throws CategoryServiceException;
	
}
