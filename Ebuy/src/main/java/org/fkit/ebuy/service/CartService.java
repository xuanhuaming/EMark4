package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.domain.Collect;



/**
 * Book服务层接口
 * */
public interface CartService {
	
	/**
	 * 查找所有图书
	 * @return Book对象集合
	 * */
	List<Cart> getAll(String username);

	Cart newcart(int id,String name, String price, String image, String number,  String username);

	void decart(int id);

	Cart updatecart(int id, String username, String number);

	Cart findcart(String name1,String userName);

	Cart increasecart(String name,int number,String username);
}
