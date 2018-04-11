package com.briup.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.briup.bean.Book;
import com.briup.common.exception.BookServiceException;
import com.briup.service.IBookService;

@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	private IBookService bookservice;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Book book,RedirectAttributes redirectAttributes){
		System.out.println(book);
		try {
			bookservice.addBooks(book);
			redirectAttributes.addFlashAttribute("addMsg", "添加成功");
			return "redirect:/book_add";
		} catch (BookServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("addError", "添加失败,"+e.getMessage());
			return "redirect:/book_add";
		}
		
	}
	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public String selectAll(HttpSession session){
		List<Book> books;
		try {
			 books = bookservice.findAllBooks();
			 System.out.println(books);
			 session.setAttribute("books", books);
			 session.setAttribute("page", 1);
		} catch (BookServiceException e) {
			e.printStackTrace();
		}
		return "redirect:/book_select";
	}
	
	@RequestMapping(value = "/selectBook", method = RequestMethod.GET)
	public String selectBook(String id, RedirectAttributes redirectAttributes){
		System.out.println(id);
		Book bookById;
		try {
			bookById = bookservice.findBookById(Long.valueOf(id.trim()));
			if(bookById!=null){
				redirectAttributes.addFlashAttribute("book",bookById);
			}else{
				redirectAttributes.addFlashAttribute("error","查询无此图书信息");
			}
		} catch (BookServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error","查询失败"+e.getMessage());
			return "redirect:/book_update";
		}
		
		return "redirect:/book_update";
		
	}
	
	@RequestMapping(value = "/update")
	public String updateBook(Book book, RedirectAttributes redirectAttributes){
		System.out.println(book.toString());
		try {
			bookservice.updateBook(book);
		} catch (BookServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "图书信息更新失败:"+e.getMessage());
			return "redirect:/book_update";
		}
		redirectAttributes.addFlashAttribute("update", "更新成功");
		return "redirect:/book_update";
		
	}
	

}
















