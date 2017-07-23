package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Order;





/**
 * Book服务层接口
 * */
public interface OrderService {
	
	/**
	 * 查找所有图书
	 * @return Book对象集合
	 * */
	List<Order> getAll(String username);

	
	

}

