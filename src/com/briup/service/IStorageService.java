package com.briup.service;

import java.util.List;

import com.briup.bean.Storage;
import com.briup.common.exception.StorageServiceException;

public interface IStorageService {
	
	public void addStorage(Storage storage,String number) throws StorageServiceException; 
	
	public List<Storage> selectAll() throws StorageServiceException;
	
}
