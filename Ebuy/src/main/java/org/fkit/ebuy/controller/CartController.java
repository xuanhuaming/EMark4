package org.fkit.ebuy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/**
 * 处理图书请求控制器
 * */
@Controller
public class CartController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/cart")
	 public String cart(Model model,
			 String username){
		// 获得所有图书集合
		List<Cart> cart_list = cartService.getAll(username);
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到main页面
		return "cart";
	}
	@RequestMapping(value="/newcart")
	 public ModelAndView newcart(int id,
			 String name,
				String price, 
				String image, 
				String number,
				String username,
			   ModelAndView mv ){
		Cart newcart = cartService.newcart(id,name, price,image,number,username);
		mv.setViewName("product");
		return mv;
	}
// 删除物品
	@RequestMapping(value="/deletecart")
	 public ModelAndView deletecart(int id, 
			 ModelAndView mv ){
	    cartService.decart(id);
		mv.setViewName("cart");
		return mv;
	}
	@RequestMapping(value="/updatecart",method=RequestMethod.POST)
	public ModelAndView updatecart(
	        int id,
			String username,
			String number,
			ModelAndView mv,
			HttpSession session){
			Cart cart1=cartService.updatecart(id,username,number);
		mv.setViewName("cart");
		return mv;
	}
}
