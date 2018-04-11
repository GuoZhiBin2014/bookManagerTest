package com.briup.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.briup.bean.User;
import com.briup.common.exception.StorageServiceException;
import com.briup.common.exception.UserServiceException;
import com.briup.service.IUserService;
import com.sun.xml.internal.bind.v2.runtime.Location;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(User user, String authCode, String repassword,
			HttpSession session, RedirectAttributes redirectAttributes) {
		System.out.println(user + repassword);

		try {
			// 验证码验证
			if (!authCode.equals(session.getAttribute("authCode"))) {
				throw new UserServiceException("验证码输入有误!");
			}
			userService.register(user, authCode, repassword);
			redirectAttributes.addFlashAttribute("msg", "注册成功,请登陆");
			return "redirect:/login";
		} catch (UserServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error",
					"注册失败:" + e.getMessage());
			return "redirect:/register";
		}

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String nickName, String password, HttpSession session,
			RedirectAttributes redirectAttributes) {
		System.out.println(nickName + password);
		try {
			User user = userService.login(nickName, password);
			session.setAttribute("user", user);
			return "redirect:/main";
		} catch (UserServiceException e) {
			e.printStackTrace();
			redirectAttributes
					.addFlashAttribute("msg", "登录失败" + e.getMessage());
			return "redirect:/login";
		}

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(User user, String repassword, String authCode,
			RedirectAttributes redirectAttributes, HttpSession session) {
		System.out.println("con" + user.toString());
		try {
			// 验证码验证
			if (!authCode.equals(session.getAttribute("authCode"))) {
				throw new UserServiceException("验证码输入有误!");
			}
			userService.update(user, repassword, authCode);
			User userByName = userService.findUserByName(user.getNickname());
			session.setAttribute("user", userByName);
			redirectAttributes.addFlashAttribute("info", "更新成功");
		} catch (UserServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error",
					"更新失败," + e.getMessage());
			return "redirect:/user_info";
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "更新失败,输入信息异常");
		}
		return "redirect:/user_info";
	}

	@RequestMapping(value = "/passwd", method = RequestMethod.POST)
	public String passwd(String nickname, String answer, String password,
			String repassword, RedirectAttributes redirectAttributes,
			HttpSession session) {
		System.out.println(nickname + ";" + answer + ";" + password + ";"
				+ repassword);
		try {
			userService.passwd(nickname, answer, password, repassword);
			redirectAttributes.addFlashAttribute("msg", "修改密码成功,请重新登陆");
			session.setAttribute("user", null);
			return "redirect:/backlogin";
		} catch (UserServiceException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error",
					"修改密码失败," + e.getMessage());
			return "redirect:/user_update";
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "修改密码失败,数据填写异常");
		}
		return "redirect:/user_update";

	}

	@RequestMapping(value = "/adminManage")
	public String adminManage(HttpServletRequest request, HttpSession session,
			String pageNum) {
		try {
			List<User> adminList = userService.selectAllAdmin();
			session.setAttribute("size", adminList.size());
			session.setAttribute("pageSum", adminList.size() / 10 + 1);
			int page = 1;
			if (pageNum != null) {
				page = Integer.valueOf(pageNum);
			}
			session.setAttribute("page", page);
			List<User> admins = new ArrayList<User>();
			int start = ((Integer.valueOf(page)) - 1) * 10 + 1;
			for (int i = start - 1; i < start + 9; i++) {
				if (adminList.size() > i) {
					admins.add(adminList.get(i));
				}
			}
			session.setAttribute("admins", admins);

		} catch (UserServiceException e) {
			e.printStackTrace();
		}

		return "redirect:/user_admin";
	}

	@RequestMapping(value = "/logUp")
	public String logUp(HttpSession session) {
		session.removeAttribute("user");

		return "redirect:/login";
	}

	@RequestMapping(value = "jump", method = RequestMethod.GET)
	public String jump(String page, HttpSession session) {
		int tempPage = Integer.valueOf(page);
		try {
			if (page.equals("0")) {
				int pageN = (int) session.getAttribute("page");
				if (pageN == 1) {
					throw new UserServiceException("已经处于第1页");
				} else {
					tempPage = pageN - 1;
				}
			}
			if (page.equals("00")) {
				int pageN = (int) session.getAttribute("page");
				if (pageN == (int) session.getAttribute("pageSum")) {
					throw new UserServiceException("已经处于最后一页");
				} else {
					tempPage = pageN + 1;
				}
			}
			session.setAttribute("page", tempPage);	
			List<User> adminList = userService.selectAllAdmin();
			List<User> admins = new ArrayList<User>();
			int start = ((Integer.valueOf(tempPage)) - 1) * 10 + 1;
			for (int i = start - 1; i < start + 9; i++) {
				if (adminList.size() > i) {
					admins.add(adminList.get(i));
				}
			}
			session.setAttribute("admins", admins);
			
			
		} catch (UserServiceException e) {
			e.printStackTrace();
		}

		return "redirect:/user_admin";
	}

}
