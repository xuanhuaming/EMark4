package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Order;

/**
 * BookMapper接口
 * */
public interface OrderMapper {

	/**
	 * 查询所有图书
	 * @param username 
	 * @return 图书对象集合
	 * */
	@Select(" select * from tb_order where username=#{username} ")
	List<Order> findAll(String username);
	
//	@Select("insert into tb_cart(id,name,price,image,number,username) values(#{id},#{name},#{price},#{image},#{number},#{username})")
//	Cart insertcart(@Param("id")int id,@Param("name")String name,@Param("price")String price,@Param("image")String image,@Param("number")String number,
//			@Param("username")String username);
}
