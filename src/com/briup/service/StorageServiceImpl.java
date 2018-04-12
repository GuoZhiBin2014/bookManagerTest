package com.briup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.Book;
import com.briup.bean.Storage;
import com.briup.common.exception.DataAccessException;
import com.briup.common.exception.StorageServiceException;
import com.briup.dao.IBookDao;
import com.briup.dao.IStorageDao;

@Service("storageService")
public class StorageServiceImpl implements IStorageService {
	@Autowired
	private IStorageDao storageDao;
	@Autowired
	private IBookDao bookDao;

	@Override
	public void addStorage(Storage storage,String number) throws StorageServiceException {
		try {
			if(number.trim().equals("")||storage.getBookId().equals("")||storage.getBookName().equals("")){
				throw new StorageServiceException("填写信息不全，请补充后再添加");
			}
			storage.setSnumber(Integer.valueOf(number));
			Book book = bookDao.findBookById(Long.valueOf(storage.getBookId().trim()));
			if(book==null){
				throw new StorageServiceException("添加图书编号不存在");
			}
			if(!book.getName().equals(storage.getBookName())){
				throw new StorageServiceException("添加图书书名与编号不符！");
			}
			storageDao.addStorage(storage);
			book.setInventory(Integer.valueOf(storage.getSnumber())+book.getInventory());
			bookDao.updateBook(book);
		} catch (NullPointerException e) {
			e.printStackTrace();
			throw new StorageServiceException("内容填写不全");
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new StorageServiceException("数据访问异常");
		}
		
		
	}

	@Override
	public List<Storage> selectAll() throws StorageServiceException {
		
		try {
			List<Storage> selectAll = storageDao.selectAll();
			
			return selectAll;
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new StorageServiceException("数据访问异常");
		}
		
		
	}

	
}
