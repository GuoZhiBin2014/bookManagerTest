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
import com.briup.bean.Record;
import com.briup.bean.Storage;
import com.briup.common.exception.BookServiceException;
import com.briup.common.exception.DataAccessException;
import com.briup.common.exception.RecordServiceException;
import com.briup.common.exception.StorageServiceException;
import com.briup.common.util.PageUtils;
import com.briup.dao.ICategoryDao;
import com.briup.service.IBookService;
import com.briup.service.IRecordService;

@Controller
@RequestMapping("/record")
public class RecordController {
	@Autowired
	private IRecordService recordService;
	
	@RequestMapping(value="/add",method = RequestMethod.POST)
	public String addRecord(Record record,String cusName,String cusId,RedirectAttributes redirectAttributes){
		
		try {
			recordService.addRecord(record, cusName, cusId);
			redirectAttributes.addFlashAttribute("msg", "添加成功");
		} catch (RecordServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "添加失败："+e.getMessage());
			
		}
		
		return "redirect:/sale_in";
	}
	
	@RequestMapping(value="selectAll",method = RequestMethod.GET)
	public String selectAll(HttpSession session){
		
		try {
			session.setAttribute("page", 1);
			List<Record> records = recordService.selectAll();
			int pageNum = PageUtils.getPage(records.size());
			session.setAttribute("pageNum", PageUtils.getPage(records.size()));
			List<Record> all = new ArrayList<Record>();
			for(int i=0;i<10;i++){
				if(i<records.size()){
					all.add(records.get(i));
				}
			}
			session.setAttribute("records", all);
			session.setAttribute("size", records.size());
			
		} catch (RecordServiceException e) {
			e.printStackTrace();
		}

		return "redirect:/sale_select";
	}
	
	@RequestMapping(value = "jump")
	public String jump(String page, HttpSession session){
		
		try {
			int tempPage = Integer.valueOf(page);
			if (page.equals("0")) {
				int pageN = (int) session.getAttribute("page");
				if (pageN == 1) {
					throw new RecordServiceException("已经处于第1页");
				} else {
					tempPage = pageN - 1;
				}

			}
			if (page.equals("00")) {
				int pageN = (int) session.getAttribute("page");
				if (pageN == (int) session.getAttribute("pageNum")) {
					throw new RecordServiceException("已经处于最后一页");
				} else {
					tempPage = pageN + 1;
				}
			}
			session.setAttribute("page", tempPage);
			List<Record> selectAll = recordService.selectAll();
			session.setAttribute("pageNum", PageUtils.getPage(selectAll.size()));
			List<Record> all = new ArrayList<>();
			int start = (tempPage - 1) * 10;
			for (int i = start; i < start + 10; i++) {
				if (i < selectAll.size()) {
					all.add(selectAll.get(i));
				}
			}
			session.setAttribute("records", all);
			session.setAttribute("size", selectAll.size());

		} catch (RecordServiceException e) {
			e.printStackTrace();
		}

		
		return "redirect:/sale_select";
	}

	@RequestMapping(value="/remove",method = RequestMethod.GET)
	public String remove(Long rid, HttpSession session, RedirectAttributes redirectAttributes ){
		
		try {
			recordService.remove(rid);
			session.setAttribute("page", 1);
			List<Record> records = recordService.selectAll();
			int pageNum = PageUtils.getPage(records.size());
			session.setAttribute("pageNum", PageUtils.getPage(records.size()));
			List<Record> all = new ArrayList<Record>();
			for(int i=0;i<10;i++){
				if(i<records.size()){
					all.add(records.get(i));
				}
			}
			session.setAttribute("records", all);
			session.setAttribute("size", records.size());
			redirectAttributes.addFlashAttribute("msg", "删除成功");
		} catch (RecordServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "删除失败："+e.getMessage());
		}
		
		return "redirect:/sale_select";
	}
	

	

	

	

}
