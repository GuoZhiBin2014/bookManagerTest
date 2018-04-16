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
import com.briup.bean.Customer;
import com.briup.common.exception.BookServiceException;
import com.briup.common.exception.CustomerServiceException;
import com.briup.common.util.PageUtils;
import com.briup.service.ICustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	ICustomerService customerService;

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(Customer customer,
			RedirectAttributes redirectAttributes) {
		try {
			customerService.addCustomer(customer);
			redirectAttributes.addFlashAttribute("msg", "添加成功");
		} catch (CustomerServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error",
					"添加失败：" + e.getMessage());
		}

		return "redirect:/customer_add";
	}

	@RequestMapping(value = "selectAll")
	public String selectAll(HttpSession session) {
		try {
			session.setAttribute("page", 1);
			List<Customer> selectAll = customerService.selectAll();
			List<Customer> all = new ArrayList<>();
			for (int i = 0; i < 10; i++) {
				if (i < selectAll.size()) {
					all.add(selectAll.get(i));
				}
			}
			session.setAttribute("customers", all);
			session.setAttribute("size", selectAll.size());
			session.setAttribute("pageNum", selectAll.size() / 10 + 1);
		} catch (CustomerServiceException e) {
			e.printStackTrace();
		}

		return "redirect:/user_customer";
	}

	@RequestMapping(value = "/jump")
	public String jump(String page, HttpSession session) {
		try {
			int tempPage = Integer.valueOf(page);
			if (page.equals("0")) {
				int pageN = (int) session.getAttribute("page");
				if (pageN == 1) {
					throw new CustomerServiceException("已经处于第1页");
				} else {
					tempPage = pageN - 1;
				}

			}
			if (page.equals("00")) {
				int pageN = (int) session.getAttribute("page");
				if (pageN == (int) session.getAttribute("pageNum")) {
					throw new CustomerServiceException("已经处于最后一页");
				} else {
					tempPage = pageN + 1;
				}
			}
			session.setAttribute("page", tempPage);
			List<Customer> selectAll;

			selectAll = customerService.selectAll();

			session.setAttribute("pageNum", PageUtils.getPage(selectAll.size()));
			List<Customer> all = new ArrayList<>();
			int start = (tempPage - 1) * 10;
			for (int i = start; i < start + 10; i++) {
				if (i < selectAll.size()) {
					all.add(selectAll.get(i));
				}
			}
			session.setAttribute("customers", all);
			session.setAttribute("size", selectAll.size());
		} catch (CustomerServiceException e) {
			e.printStackTrace();
		}

		return "redirect:/user_customer";
	}
	
	@RequestMapping(value="remove")
	public String remove(Long id,RedirectAttributes redirectAttributes,HttpSession session){
		
		try {
			customerService.remove(id);
			
			session.setAttribute("page", 1);
			List<Customer> selectAll = customerService.selectAll();
			List<Customer> all = new ArrayList<>();
			for (int i = 0; i < 10; i++) {
				if (i < selectAll.size()) {
					all.add(selectAll.get(i));
				}
			}
			session.setAttribute("customers", all);
			session.setAttribute("size", selectAll.size());
			session.setAttribute("pageNum", selectAll.size() / 10 + 1);
			
			redirectAttributes.addFlashAttribute("msg", "删除成功！");
		} catch (CustomerServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("msg", e.getMessage());			
		}
		
		
		return "redirect:/user_customer";
	}
	
	
	
	
	
	
	
	
	

}
