package com.briup.service;

import java.util.List;

import com.briup.bean.Customer;
import com.briup.common.exception.CustomerServiceException;

public interface ICustomerService {
	
	public void addCustomer(Customer customer) throws CustomerServiceException;
	
	public List<Customer> selectAll() throws CustomerServiceException;
	
	public void remove(Long id) throws CustomerServiceException;
	
}
