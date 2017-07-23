package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.mapper.OrderMapper;
import org.fkit.ebuy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Book服务层接口实现类
 * @Service("bookService")用于将当前类注释为一个Spring的bean，名为bookService
 * @param <OrderMapper>
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("orderService")
public class OrderServiceImpl implements OrderService {
	
	/**
	 * 自动注入CartMapper
	 * */
	@Autowired
	private OrderMapper orderMapper;

	/**
	 * CartService接口getAll方法实现
	 * @see {CartService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public List<Order> getAll(String username) {
		return orderMapper.findAll (username);
	}

//	@Override
//	public Cart newcart(int id,String name, String price, String image, String number,  String username) {
//		// TODO Auto-generated method stub
//		return cartMapper.insertcart(id,name, price,image,number,username);
//
//	}

}
