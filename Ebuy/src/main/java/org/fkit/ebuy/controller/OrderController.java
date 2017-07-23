package org.fkit.ebuy.controller;

import java.util.List;

import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 处理图书请求控制器
 * */
@Controller
public class OrderController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/order")
	 public String order(Model model,
			 String username){
		// 获得所有图书集合
		List<Order> order_list = orderService.getAll(username);
		// 将图书集合添加到model当中
		model.addAttribute("order_list", order_list);
		// 跳转到main页面
		return "order";
	}
//	@RequestMapping(value="/newcart")
//	 public ModelAndView newcart(int id,
//			 String name,
//				String price, 
//				String image, 
//				String number,
//				String username,
//			   ModelAndView mv ){
//		Cart newcart = cartService.newcart(id,name, price,image,number,username);
//		mv.setViewName("product");
//		return mv;
//	}
}
