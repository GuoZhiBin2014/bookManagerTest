package com.briup.dao;

import java.util.List;

import com.briup.bean.Book;
import com.briup.common.exception.DataAccessException;

public interface IBookDao {
	public void addBook(Book book) throws DataAccessException;

	public Book findBookById(long bookId) throws DataAccessException;
	
	public List<Book> findAllBooks() throws DataAccessException;
	
	public void updateBook(Book book) throws DataAccessException;
	
	
}
