package org.fkit.ebuy.controller;

import java.util.List;

import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理图书请求控制器
 * */
@Controller
public class ShopController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("shopService")
	private ShopService shopService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/shop")
	 public String shop(Model model){
		// 获得所有图书集合
		List<Product> product_list = shopService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("product_list", product_list);
		// 跳转到main页面
		return "shop";
	}
	@RequestMapping(value="/toner")
	 public String toner(Model model){
		// 获得所有图书集合
		List<Product> toner_list = shopService.getAll4();
		// 将图书集合添加到model当中
		model.addAttribute("toner_list", toner_list);
		// 跳转到main页面
		return "toner";
	}
	@RequestMapping(value="/cream")
	 public String cream (Model model){
		// 获得所有图书集合
		List<Product> cream_list = shopService.getAll1();
		// 将图书集合添加到model当中
		model.addAttribute("cream_list", cream_list);
		// 跳转到main页面
		return "cream";
	}
	@RequestMapping(value="/perfume")
	 public String perfume(Model model){
		// 获得所有手机壳集合
		List<Product> perfume_list = shopService.getAll3();
		// 将手机壳集合添加到model当中
		model.addAttribute("perfume_list", perfume_list);
		// 跳转到main页面
		return "perfume";
	}
	@RequestMapping(value="/lotion")
	 public String lotion(Model model){
		// 获得所有卫衣集合
		List<Product> lotion_list = shopService.getAll2();
		// 将卫衣集合添加到model当中
		model.addAttribute("lotion_list", lotion_list);
		// 跳转到main页面
		return "lotion";
	}
	@RequestMapping(value="/product")
	 public String look(int id,
			 Model model){
		// 获得所有图书集合
		List<Product> p_list = shopService.getAll5(id);
		// 将图书集合添加到model当中
		model.addAttribute("p_list", p_list);
		// 跳转到main页面
		return "product";
	}
	
}
