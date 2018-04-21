package com.briup.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSessionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.Book;
import com.briup.common.exception.BookServiceException;
import com.briup.common.exception.DataAccessException;
import com.briup.dao.IBookDao;
import com.briup.dao.ICategoryDao;

@Service("bookService")
public class BookServiceImpl implements IBookService {
	@Autowired
	IBookDao bookDao;
	@Autowired
	ICategoryDao categoryDao;

	@Override
	public void addBooks(Book book) throws BookServiceException {
		try {
			Book bookById = bookDao.findBookById(book.getBookId());
			if(bookById!=null){
				throw new BookServiceException("添加图书已存在");
			}
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(book.getbDate()); 
			if(date.getTime()>new Date().getTime()||(date.getTime()<0)){
				throw new BookServiceException("出版日期填写有误");
			}
			book.setInventory(0);
			bookDao.addBook(book);
		}  catch (NullPointerException e) {
			e.printStackTrace();
			throw new BookServiceException("填写信息不全,请补充");
		}  catch (ParseException e) {
			e.printStackTrace();
			throw new BookServiceException("出版日期填写有误");
		}  catch (DataAccessException e) {
			e.printStackTrace();
			throw new BookServiceException("数据库访问异常");
		}
	}

	@Override
	public List<Book> findAllBooks() throws BookServiceException {
		List<Book> books;
		try {
			books = bookDao.findAllBooks();
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new BookServiceException("数据访问异常");
		}
		return books;
		
		
	}

	@Override
	public Book findBookById(Long bookId) throws BookServiceException {
		Book bookById;
		try {
			bookById = bookDao.findBookById(bookId);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new BookServiceException("数据访问异常");
		}
		return bookById;
	}

	@Override
	public void updateBook(Book book) throws BookServiceException {
		try {
			bookDao.updateBook(book);
		} catch (DataAccessException e) {
			e.printStackTrace();
			throw new BookServiceException("数据访问异常");
		} catch (Exception e) {
			e.printStackTrace();
			throw new BookServiceException("所填信息有误");
		}
		
	}

	@Override
	public List<Book> selectWarn() throws BookServiceException {
		List<Book> warnList = null;
		try {
			warnList = bookDao.selectWarn();
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return warnList;
		
	}

	@Override
	public void remove(Long bookId) throws BookServiceException {
		System.out.println(bookId);
		try {
			Boolean isDelete = bookDao.deleteByBookId(bookId);
			if(!isDelete){
				throw new BookServiceException("删除失败");
			}
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		
	}

}
