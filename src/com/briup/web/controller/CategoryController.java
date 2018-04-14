package com.briup.web.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.briup.bean.Category;
import com.briup.common.exception.CategoryServiceException;
import com.briup.service.ICategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private ICategoryService categoryService;

	@RequestMapping(value = "/show")
	public String showCategory(HttpSession session) {
		try {
			List<Category> selectAll = categoryService.selectAll();
			System.out.println(selectAll);
			session.setAttribute("categorys", selectAll);
			session.setAttribute("size", selectAll.size());
		} catch (CategoryServiceException e) {
			e.printStackTrace();
		}

		return "redirect:/book_category";
	}

	@RequestMapping(value = "/insert")
	public String insert(Category category,
			RedirectAttributes redirectAttributes, HttpSession session) {
		try {
			categoryService.insert(category);
			redirectAttributes.addFlashAttribute("msg", "添加成功");
			List<Category> selectAll = categoryService.selectAll();
			session.setAttribute("categorys", selectAll);
			session.setAttribute("page", selectAll.size());
		} catch (CategoryServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error",
					"添加失败：" + e.getMessage());
		}
		return "redirect:/book_category";
	}

	@RequestMapping(value = "/delete")
	public String delete(String id, HttpSession session, RedirectAttributes redirectAttributes) {

		try {
			categoryService.deleteById(id);
			List<Category> selectAll = categoryService.selectAll();
			session.setAttribute("categorys", selectAll);
			session.setAttribute("size", selectAll.size());
			redirectAttributes.addFlashAttribute("msg", "成功删除");
		} catch (CategoryServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "删除失败"+e.getMessage());
		}

		return "redirect:/book_category";
	}

}
