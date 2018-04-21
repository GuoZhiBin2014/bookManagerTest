package com.briup.dao;

import java.util.List;

import com.briup.bean.Book;
import com.briup.bean.Record;
import com.briup.common.exception.DataAccessException;

public interface IRecordDao {
	
	public Boolean addRecord(Record record) throws DataAccessException;
	
	public List<Record> selectAll() throws DataAccessException;
	
	public Boolean removeById(Long rid) throws DataAccessException;
	
	
	
}
