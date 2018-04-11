package com.briup.web.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.briup.bean.Storage;
import com.briup.bean.User;
import com.briup.common.exception.StorageServiceException;
import com.briup.common.util.PageUtils;
import com.briup.service.IStorageService;

@Controller
@RequestMapping("/storage")
public class StorageController {
	@Autowired
	private IStorageService storageService;

	@RequestMapping(value = "/addInfo")
	public String addInfo(HttpSession session) {

		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		session.setAttribute("currentTime", dateString);

		return "redirect:/stock_in";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Storage storage, String number,
			RedirectAttributes redirectAttributes) {

		try {
			storageService.addStorage(storage, number);
			redirectAttributes.addFlashAttribute("msg", "添加成功");
		} catch (StorageServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", e.getMessage());
		}

		return "redirect:/stock_in";
	}

	@RequestMapping(value = "select")
	public String selectAll(HttpSession session) {

		try {
			session.setAttribute("page", 1);
			List<Storage> selectAll = storageService.selectAll();
			session.setAttribute("pageNum", PageUtils.getPage(selectAll.size()));
			List<Storage> all = new ArrayList<>();
			for (int i = 0; i < 10; i++) {
				if (i < selectAll.size()) {
					all.add(selectAll.get(i));
				}
			}
			session.setAttribute("storage", all);
			session.setAttribute("size", selectAll.size());
		} catch (StorageServiceException e) {
			e.printStackTrace();

		}

		return "redirect:/stock_select";
	}

	@RequestMapping(value = "jump", method = RequestMethod.GET)
	public String jumpPage(String page, HttpSession session) {
		try {
			int tempPage =Integer.valueOf(page);
			if(page.equals("0")){
				int pageN = (int) session.getAttribute("page");
				if(pageN==1){
					throw new StorageServiceException("已经处于第1页");
				}else{
					tempPage=pageN-1;
				}
				
			}
			if(page.equals("00")){
				int pageN = (int)session.getAttribute("page");
				if(pageN==(int)session.getAttribute("pageNum")){
					throw new StorageServiceException("已经处于最后一页");
				}else{
					tempPage=pageN+1;
				}
			}
			session.setAttribute("page", tempPage);
			List<Storage> selectAll = storageService.selectAll();
			session.setAttribute("pageNum", PageUtils.getPage(selectAll.size()));
			List<Storage> all = new ArrayList<>();
			int start = (tempPage - 1) * 10;
			for (int i = start; i < start + 10; i++) {
				if (i < selectAll.size()) {
					all.add(selectAll.get(i));
				}
			}
			session.setAttribute("storage", all);
			session.setAttribute("size", selectAll.size());
		} catch (StorageServiceException e) {
			e.printStackTrace();
		}
		return "redirect:/stock_select";
	}

}
