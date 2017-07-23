package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Admin;
import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.domain.Product;


public interface AdminService {
		
		/**
		 * 判断用户登录
		 * @param String loginname
		 * @param String password
		 * @return 找到返回User对象，没有找到返回null
		 * */
		Admin adminlogin(String adminname,String adminpassword);

		Product addproduct(String name, String price, String descripts, String image, String image2, String image3,
				String image4, int stock, int sales, int typeid);

		List<Order> getAll();

		Order updateorder(int oid, String status, String totalprice, String phone, String address);

		List<Product> getAll1();

		Product updatestock(int id, String name, String stock, String sales);
}
