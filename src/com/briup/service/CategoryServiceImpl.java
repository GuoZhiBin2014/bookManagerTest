package com.briup.service;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.Category;
import com.briup.common.exception.CategoryServiceException;
import com.briup.common.exception.DataAccessException;
import com.briup.dao.ICategoryDao;

@Service("categoryService")
public class CategoryServiceImpl implements ICategoryService {

	@Autowired
	ICategoryDao categoryDao;

	@Override
	public List<Category> selectAll() throws CategoryServiceException {
		List<Category> list;
		try {
			list = categoryDao.selectAll();
			System.out.println(list);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new CategoryServiceException(e.getMessage());
		}
		return list;

	}

	@Override
	public void insert(Category category) throws CategoryServiceException {

		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			category.setAddtime(dateFormat.format(new Date()));
			System.out.println(category);
			if (category.getId() == null || category.getName() == null
					|| category.getId().equals("")
					|| category.getName().equals("")) {
				throw new CategoryServiceException("添加信息有值为空!");
			}
			Category selectById = categoryDao.selectById(category.getId());
			if (selectById != null) {
				throw new CategoryServiceException("添加类别编号已存在");
			}
			Category selectByName = categoryDao
					.selectByName(category.getName());
			if (selectByName != null) {
				throw new CategoryServiceException("添加类别名称已存在");
			}
			List<Category> selectAll = categoryDao.selectAll();
			if(selectAll.size()>11){
				throw new CategoryServiceException("添加取消,图书添加类别过多,请删除无用类别.");
			}
			Boolean isInsert = categoryDao.insert(category);
			if (!isInsert) {
				throw new DataAccessException("插入失败");
			}
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new CategoryServiceException("数据访问异常");
		}
	}
	
	public void deleteById(String id) throws CategoryServiceException{
		
		try {
			Boolean isDelete = categoryDao.deleteById(Long.valueOf(id));
			if(!isDelete){
				throw new CategoryServiceException("删除失败");
			}
			
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new CategoryServiceException("数据访问异常");
		} catch (Exception e){
			e.printStackTrace();
			throw new CategoryServiceException(e.getMessage());
		}
		
	}

}
