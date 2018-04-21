package com.briup.service;

import java.util.List;

import com.briup.bean.Book;
import com.briup.common.exception.BookServiceException;

public interface IBookService {
	public void addBooks(Book book) throws BookServiceException;

	public List<Book> findAllBooks() throws BookServiceException;
	
	public Book findBookById(Long bookId) throws BookServiceException;
	
	public void updateBook(Book book) throws BookServiceException;
	
	public List<Book> selectWarn() throws BookServiceException;
	
	public void remove(Long bookId) throws BookServiceException;
	
}
