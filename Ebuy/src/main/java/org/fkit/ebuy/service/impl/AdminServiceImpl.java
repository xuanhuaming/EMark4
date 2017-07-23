package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Admin;
import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.mapper.AdminMapper;
import org.fkit.ebuy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
	/**
	 * User服务层接口实现类
	 * @Service("userService")用于将当前类注释为一个Spring的bean，名为userService
	 * */
	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
	@Service("adminService")
	public class AdminServiceImpl implements AdminService {
		
		/**
		 * 自动注入UserMapper
		 * */
		@Autowired
		private AdminMapper adminMapper;

		/**
		 * UserService接口login方法实现
		 * @see { UserService }
		 * */
		@Transactional(readOnly=true)
		@Override
		public Admin adminlogin(String adminname, String adminpassword) {
			// TODO Auto-generated method stub
			return adminMapper.findWithLoginnameAndPassword(adminname, adminpassword);
		}

		@Override
		public Product addproduct(String name, String price, String descripts, String image,
				String image2, String image3, String image4, int stock, int sales, int typeid) {
			// TODO Auto-generated method stub
			return adminMapper.addproduct(name,price,descripts, image,image2,image3, image4, stock,  sales, typeid);
		}

		@Override
		public List<Order> getAll() {
			// TODO Auto-generated method stub
			return adminMapper.findAll();
		}

		@Override
		public Order updateorder(int oid, String status, String totalprice, String phone,
				String address) {
			// TODO Auto-generated method stub
			return adminMapper.updateorder(oid, status, address, phone, totalprice);
		}

		@Override
		public List<Product> getAll1() {
			// TODO Auto-generated method stub
			return 	adminMapper.findAll1();
		
}

		@Override
		public Product updatestock(int id, String name, String stock, String sales) {
			// TODO Auto-generated method stub
			return adminMapper.updatestock(id, name,stock,sales);
		}



	

	
}
