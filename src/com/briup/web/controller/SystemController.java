package com.briup.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.briup.bean.Book;
import com.briup.bean.Category;
import com.briup.bean.Customer;
import com.briup.bean.Record;
import com.briup.bean.Storage;
import com.briup.bean.User;
import com.briup.common.exception.BookServiceException;
import com.briup.common.exception.CustomerServiceException;
import com.briup.common.exception.DataAccessException;
import com.briup.common.exception.RecordServiceException;
import com.briup.common.exception.StorageServiceException;
import com.briup.common.exception.UserServiceException;
import com.briup.common.util.PageUtils;
import com.briup.dao.ICategoryDao;
import com.briup.service.IBookService;
import com.briup.service.ICustomerService;
import com.briup.service.IRecordService;
import com.briup.service.IStorageService;
import com.briup.service.IUserService;

@Controller
@RequestMapping("/system")
public class SystemController {
	@Autowired
	IBookService bookService;
	@Autowired
	IStorageService storageService;
	@Autowired
	IRecordService recordService;
	@Autowired
	IUserService userService;
	@Autowired
	ICustomerService customerService;

	@RequestMapping(value = "info")
	public String getDate(HttpSession session) {

		try {
			List<Book> books = bookService.findAllBooks();
			session.setAttribute("bookSize", books.size());
			int stockNum = 0;
			for (Book book : books) {
				stockNum += book.getInventory();
			}
			session.setAttribute("stockNum", stockNum);
			List<Book> list = bookService.selectWarn();
			session.setAttribute("warnNum", list.size());

		} catch (BookServiceException e) {
			e.printStackTrace();
		}
		
		try {
			List<Storage> list = storageService.selectAll();
			session.setAttribute("stockSize", list.size());
			int storageNum = 0;
			for(Storage storage: list){
				storageNum+=storage.getSnumber();
			}
			session.setAttribute("storageNum", storageNum);
		} catch (StorageServiceException e) {
			e.printStackTrace();
		}
		
		try {
			List<Record> list = recordService.selectAll();
			session.setAttribute("recordSize", list.size());
			int recordNum = 0;
			for(Record record:list){
				recordNum+=Integer.valueOf(record.getSaleNum());
			}
			session.setAttribute("recordNum", recordNum);
		} catch (RecordServiceException e) {
			e.printStackTrace();
		}
		
		try {
			List<User> list = userService.selectAllAdmin();
			session.setAttribute("userSize", list.size());
		} catch (UserServiceException e) {
			e.printStackTrace();
		}
		
		try {
			List<Customer> list = customerService.selectAll();
			session.setAttribute("customerNum", list.size());
		} catch (CustomerServiceException e) {
			e.printStackTrace();
		}
		
		return "redirect:/sale_info";
	}
	
	@RequestMapping(value="mainPage")
	public String main(HttpSession session){
		
		try {
			List<Book> books = bookService.findAllBooks();
			session.setAttribute("bookSize", books.size());
			int stockNum = 0;
			for (Book book : books) {
				stockNum += book.getInventory();
			}
			session.setAttribute("stockNum", stockNum);
			List<Book> list = bookService.selectWarn();
			session.setAttribute("warnNum", list.size());

		} catch (BookServiceException e) {
			e.printStackTrace();
		}
		
		try {
			List<Storage> list = storageService.selectAll();
			session.setAttribute("stockSize", list.size());
			int storageNum = 0;
			for(Storage storage: list){
				storageNum+=storage.getSnumber();
			}
			session.setAttribute("storageNum", storageNum);
		} catch (StorageServiceException e) {
			e.printStackTrace();
		}
		
		try {
			List<Record> list = recordService.selectAll();
			session.setAttribute("recordSize", list.size());
			int recordNum = 0;
			for(Record record:list){
				recordNum+=Integer.valueOf(record.getSaleNum());
			}
			session.setAttribute("recordNum", recordNum);
		} catch (RecordServiceException e) {
			e.printStackTrace();
		}
		
		try {
			List<User> list = userService.selectAllAdmin();
			session.setAttribute("userSize", list.size());
		} catch (UserServiceException e) {
			e.printStackTrace();
		}
		
		try {
			List<Customer> list = customerService.selectAll();
			session.setAttribute("customerNum", list.size());
		} catch (CustomerServiceException e) {
			e.printStackTrace();
		}
		
		return"redirect:/main";
	}
	
	
	
}
