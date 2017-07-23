package org.fkit.ebuy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.ebuy.domain.Admin;
import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class AdminContoller {
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;

	@RequestMapping(value="/adminlogin" )
	 public ModelAndView adminlogin(
			 String adminname,
			 String adminpassword,
			 ModelAndView mv,
			 HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录sao
		Admin admin = adminService.adminlogin(adminname, adminpassword);
		 if(admin != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("admin", admin);
			// 转发到main请求
			mv.setView(new RedirectView("/Ebuy/adminmain"));
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录失败，请重新输入!");
			mv.setViewName("adminloginForm");
		}
		return mv;
	}
//	添加商品123
	 @RequestMapping(value="/addproduct",method=RequestMethod.POST)
	 public ModelAndView addproduct(
				     String name,
				     String price,
				     String descripts,
				     String image,
				     String image2,
				     String image3,
				     String image4,
				     int stock, //库存
				     int sales,  //销量
				     int typeid,
					 ModelAndView mv,
				     HttpSession session){
	   Product addproduct  = adminService.addproduct (name,price,descripts,image,image2,image3,image4,stock, sales,typeid);
	     mv.setViewName("addproductsuccess");
			return mv;
	
	 }
//  查看订单
	 @RequestMapping(value="/lookorder")
	 public String lookorder(Model model){
		// 获得所有图书集合
		List<Order> order_list = adminService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("order_list", order_list);
		// 跳转到main页面
		return "lookorder";
	} 
//  修改订单
	 @RequestMapping(value="/updateorder",method=RequestMethod.POST)
		public ModelAndView updateorder(
		        int oid,
				String status,
				String totalprice, 
				String phone,
				String address,
				ModelAndView mv,
				HttpSession session){
			Order uporder=	adminService.updateorder(oid,status,totalprice, phone,address);
			mv.setViewName("lookorder");
			return mv;
		}
//	 查看销量与库存
	 @RequestMapping(value="/newstock")
	 public String newstock(Model model){
		// 获得所有图书集合
		List<Product> newstock_list = adminService.getAll1();
		// 将图书集合添加到model当中
		model.addAttribute("newstock_list",newstock_list);
		// 跳转到main页面
		return "newstock";
}
//	 修改销量与库存
	 @RequestMapping(value="/updatestock",method=RequestMethod.POST)
		public ModelAndView updatestock(
		        int id,
				String name,
				String stock, 
				String sales,
				ModelAndView mv,
				HttpSession session){
			Product upstock=adminService.updatestock(id,name,stock,sales);
			mv.setViewName("newstock");
			return mv;
		} 
}
