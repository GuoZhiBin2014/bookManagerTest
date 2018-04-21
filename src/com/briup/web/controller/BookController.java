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
import com.briup.bean.Storage;
import com.briup.common.exception.BookServiceException;
import com.briup.common.exception.DataAccessException;
import com.briup.common.exception.StorageServiceException;
import com.briup.common.util.PageUtils;
import com.briup.dao.ICategoryDao;
import com.briup.service.IBookService;

@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	private IBookService bookservice;
	@Autowired
	private ICategoryDao categoryService;
	

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Book book, RedirectAttributes redirectAttributes) {
		System.out.println(book);
		try {
			bookservice.addBooks(book);
			redirectAttributes.addFlashAttribute("addMsg", "添加成功");
			return "redirect:/book_add";
		} catch (BookServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("addError",
					"添加失败," + e.getMessage());
			return "redirect:/book_add";
		}

	}

	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public String selectAll(HttpSession session) {
		List<Book> books;
		try {
			session.setAttribute("page", 1);
			books = bookservice.findAllBooks();
			int pageNum = PageUtils.getPage(books.size());
			session.setAttribute("pageNum", PageUtils.getPage(books.size()));
			List<Book> all = new ArrayList<>();
			for (int i = 0; i < 10; i++) {
				if (i < books.size()) {
					all.add(books.get(i));
				}
			}
			session.setAttribute("books", all);
			session.setAttribute("size", books.size());
			
		} catch (BookServiceException e) {
			e.printStackTrace();
		}
		return "redirect:/book_select";
	}

	@RequestMapping(value = "/selectBook", method = RequestMethod.GET)
	public String selectBook(String id, RedirectAttributes redirectAttributes) {
		System.out.println(id);
		Book bookById;
		try {
			bookById = bookservice.findBookById(Long.valueOf(id.trim()));
			if (bookById != null) {
				redirectAttributes.addFlashAttribute("book", bookById);
			} else {
				redirectAttributes.addFlashAttribute("error", "查询无此图书信息");
			}
		} catch (BookServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error",
					"查询失败" + e.getMessage());
			return "redirect:/book_update";
		}

		return "redirect:/book_update";

	}

	@RequestMapping(value = "/update")
	public String updateBook(Book book, RedirectAttributes redirectAttributes) {
		System.out.println(book.toString());
		try {

			bookservice.updateBook(book);
		} catch (BookServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error",
					"图书信息更新失败:" + e.getMessage());
			return "redirect:/book_update";
		}
		redirectAttributes.addFlashAttribute("update", "更新成功");
		return "redirect:/book_update";

	}

	@RequestMapping(value = "jump")
	public String jump(String page, HttpSession session) {
		try {
			int tempPage = Integer.valueOf(page);
			if (page.equals("0")) {
				int pageN = (int) session.getAttribute("page");
				if (pageN == 1) {
					throw new BookServiceException("已经处于第1页");
				} else {
					tempPage = pageN - 1;
				}

			}
			if (page.equals("00")) {
				int pageN = (int) session.getAttribute("page");
				if (pageN == (int) session.getAttribute("pageNum")) {
					throw new BookServiceException("已经处于最后一页");
				} else {
					tempPage = pageN + 1;
				}
			}
			session.setAttribute("page", tempPage);
			List<Book> selectAll = bookservice.findAllBooks();
			session.setAttribute("pageNum", PageUtils.getPage(selectAll.size()));
			List<Book> all = new ArrayList<>();
			int start = (tempPage - 1) * 10;
			for (int i = start; i < start + 10; i++) {
				if (i < selectAll.size()) {
					all.add(selectAll.get(i));
				}
			}
			session.setAttribute("books", all);
			session.setAttribute("size", selectAll.size());

		} catch (BookServiceException e) {
			e.printStackTrace();
		}

		return "redirect:/book_select";
	}
	
	@RequestMapping("bookAdd")
	public String bookAdd(HttpSession session){
		try {
			List<Category> selectAll = categoryService.selectAll();
			session.setAttribute("categorys", selectAll);
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		
		return "redirect:/book_add";
	}
	
	@RequestMapping(value="/warn")
	public String selectWarning(HttpSession session){
		List<Book> list;
		try {
			list = bookservice.selectWarn();
			session.setAttribute("page", 1);
			List<Book> books = bookservice.selectWarn();
			int pageNum = PageUtils.getPage(books.size());
			session.setAttribute("pageNum", PageUtils.getPage(books.size()));
			List<Book> all = new ArrayList<>();
			for (int i = 0; i < 10; i++) {
				if (i < books.size()) {
					all.add(books.get(i));
				}
			}
			session.setAttribute("books", all);
			session.setAttribute("size", books.size());
		} catch (BookServiceException e) {
			e.printStackTrace();
		}
		
		
		return "redirect:/book_select";
	}
	
	@RequestMapping(value="/remove", method = RequestMethod.GET)
	public String remove(String bookId, HttpSession session, RedirectAttributes rediAttributes){
		System.out.println(bookId);
		try {
			bookservice.remove(Long.valueOf(bookId));
			session.setAttribute("page", 1);
			List<Book> books = bookservice.findAllBooks();
			int pageNum = PageUtils.getPage(books.size());
			session.setAttribute("pageNum", PageUtils.getPage(books.size()));
			List<Book> all = new ArrayList<>();
			for (int i = 0; i < 10; i++) {
				if (i < books.size()) {
					all.add(books.get(i));
				}
			}
			session.setAttribute("books", all);
			session.setAttribute("size", books.size());
			rediAttributes.addFlashAttribute("msg", "删除成功");
		} catch (BookServiceException e) {
			e.printStackTrace();
			rediAttributes.addFlashAttribute("error", "删除失败");
		}
		
		return "redirect:/book_select";
	}

}
