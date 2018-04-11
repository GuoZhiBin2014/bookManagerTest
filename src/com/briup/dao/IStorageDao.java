package com.briup.dao;

import java.util.List;

import com.briup.bean.Storage;
import com.briup.bean.User;
import com.briup.common.exception.DataAccessException;

public interface IStorageDao {
		
	public void addStorage(Storage storage)throws DataAccessException;
	
	public List<Storage> selectAll() throws DataAccessException;

	
}
