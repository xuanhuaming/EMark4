package org.fkit.ebuy.service.impl;

import java.util.List;
import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.mapper.CartMapper;
import org.fkit.ebuy.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Book服务层接口实现类
 * @Service("bookService")用于将当前类注释为一个Spring的bean，名为bookService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("cartService")
public class CartServiceImpl implements CartService {
	
	/**
	 * 自动注入CartMapper
	 * */
	@Autowired
	private CartMapper cartMapper;

	/**
	 * CartService接口getAll方法实现
	 * @see {CartService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public List<Cart> getAll(String username) {
		
		return cartMapper.findAll (username);
	}

	@Override
	public Cart newcart(int id,String name, String price, String image, String number,  String username) {
		// TODO Auto-generated method stub
		return cartMapper.insertcart(id,name, price,image,number,username);

	}

	@Override
	public void decart(int id) {
		// TODO Auto-generated method stub
		cartMapper.decart(id);
	}

	@Override
	public Cart updatecart(int id, String username,String number) {
		// TODO Auto-generated method stub
		return  cartMapper.updatecart(id,username,number);
	}

}
