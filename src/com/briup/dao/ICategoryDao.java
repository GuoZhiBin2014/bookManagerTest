package com.briup.dao;

import java.util.List;

import com.briup.bean.Category;
import com.briup.common.exception.DataAccessException;

public interface ICategoryDao {
	
	public List<Category> selectAll() throws DataAccessException;
	
	public Boolean insert(Category category) throws DataAccessException;
	
	public Category selectById(Long id) throws DataAccessException;
	
	public Category selectByName(String name) throws DataAccessException;
	
	public Boolean deleteById(Long id) throws DataAccessException;
	
}
