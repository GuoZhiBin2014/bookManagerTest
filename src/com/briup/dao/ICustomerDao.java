package com.briup.dao;

import java.util.List;

import com.briup.bean.Customer;
import com.briup.common.exception.DataAccessException;

public interface ICustomerDao {

	public Boolean addCustomer(Customer customer) throws DataAccessException;
	
	public Customer findByCardid(String cardid) throws DataAccessException;

	public List<Customer> selectAll() throws DataAccessException;
	
	public Boolean deleteById(Long id) throws DataAccessException;
	
}
