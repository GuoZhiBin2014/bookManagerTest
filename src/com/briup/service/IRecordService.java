package com.briup.service;

import java.util.List;

import com.briup.bean.Record;
import com.briup.bean.Storage;
import com.briup.common.exception.RecordServiceException;
import com.briup.common.exception.StorageServiceException;

public interface IRecordService {
	
	public void addRecord(Record record,String cusName,String cusId) throws RecordServiceException;
	
	public List<Record> selectAll() throws RecordServiceException;
	
	public void remove(Long rid) throws RecordServiceException;
	
}
