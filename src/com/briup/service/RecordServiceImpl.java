package com.briup.service;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSessionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.Book;
import com.briup.bean.Customer;
import com.briup.bean.Record;
import com.briup.common.exception.BookServiceException;
import com.briup.common.exception.DataAccessException;
import com.briup.common.exception.RecordServiceException;
import com.briup.dao.IBookDao;
import com.briup.dao.ICategoryDao;
import com.briup.dao.ICustomerDao;
import com.briup.dao.IRecordDao;

@Service("recordService")
public class RecordServiceImpl implements IRecordService {
	@Autowired
	IRecordDao recordDao;
	@Autowired
	IBookDao bookDao;
	@Autowired
	ICustomerDao customerDao;

	@Override
	public void addRecord(Record record, String cusName, String cusId)
			throws RecordServiceException {
		Book book = null;
		if (record.getBookId().equals("") || record.getBookName().equals("")
				|| record.getSaleNum().equals("")
				|| record.getSalePrice().equals("") || cusName.equals("")
				|| cusId.equals("")) {
			throw new RecordServiceException("输入有值为空，请重新输入");
		}
		DateFormat format = DateFormat.getDateTimeInstance();
		record.setAddTime(format.format(new Date()));
		record.setCustomer(Long.valueOf(cusId));
		
		try {
			book = bookDao.findBookById(Long.valueOf(record.getBookId()));
			if(book==null){
				throw new RecordServiceException("没有找到图书信息，请添加图书信息");
			}
			if(!book.getName().equals(record.getBookName())){
				throw new RecordServiceException("图书信息填写有误");
			}
		} catch (DataAccessException e1) {
			e1.printStackTrace();
			throw new RecordServiceException("数据访问异常");
		}
		
		try {
			Customer customer = customerDao.findByCardid(cusId);
			if(customer==null){
				throw new RecordServiceException("没有找到客户信息，请添加信息！");
			}
			if(!cusName.equals(customer.getName())){
				throw new RecordServiceException("客户信息填写有误");
			}
		} catch (DataAccessException e1) {
			e1.printStackTrace();
			throw new RecordServiceException("数据访问异常");
		}
		
		try {
			Boolean isAdd = recordDao.addRecord(record);
			if(!isAdd){
				throw new RecordServiceException("数据添加失败");
			}
			book.setInventory(book.getInventory()-Integer.valueOf(record.getSaleNum()));
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new RecordServiceException("数据访问异常");
		}
		
	}

	@Override
	public List<Record> selectAll() throws RecordServiceException {
		List<Record> allList = null;
		try {
			allList = recordDao.selectAll();
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return allList;
	}

	@Override
	public void remove(Long rid) throws RecordServiceException {
		
		try {
			Boolean isRemove = recordDao.removeById(rid);
			if(!isRemove){
				throw new RecordServiceException("删除失败");
			}
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
}
