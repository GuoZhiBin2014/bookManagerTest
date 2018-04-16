package com.briup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.Customer;
import com.briup.common.exception.CustomerServiceException;
import com.briup.common.exception.DataAccessException;
import com.briup.dao.ICustomerDao;

@Service("customerService")
public class CustomerServiceImpl implements ICustomerService {

	@Autowired
	ICustomerDao customerDao;

	@Override
	public void addCustomer(Customer customer) throws CustomerServiceException {

		try {
			if (customer.getName().equals("")
					|| customer.getGender().equals("")
					|| customer.getAddress().equals("")
					|| customer.getCardid().equals("")
					|| customer.getPhoneNum().equals("")
					|| customer.getQqNum().equals("")) {
				throw new CustomerServiceException("添加信息不全，请重新填写！");
			}
			Customer customerBycardId = customerDao.findByCardid(customer
					.getCardid());
			if (customerBycardId != null) {
				throw new CustomerServiceException("所添加客户身份证已存在！");
			}
			Boolean isAdd = customerDao.addCustomer(customer);
			if (!isAdd) {
				throw new CustomerServiceException("添加失败");
			}
		} catch (DataAccessException e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Customer> selectAll() throws CustomerServiceException {
		List<Customer> selectAll = null;
		try {
			selectAll = customerDao.selectAll();

		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return selectAll;
	}

	@Override
	public void remove(Long id) throws CustomerServiceException {

		try {
			Boolean idDelete = customerDao.deleteById(id);
			if(!idDelete){
				throw new DataAccessException("删除失败");
			}
		} catch (DataAccessException e) {
			e.printStackTrace();
		}

	}

}
