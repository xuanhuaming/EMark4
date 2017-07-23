package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.domain.User;


/**
 * BookMapper接口
 * */
public interface CartMapper {

	/**
	 * 查询所有图书
	 * @param username 
	 * @return 图书对象集合
	 * */
	@Select(" select * from tb_cart where username=#{username} ")
	List<Cart> findAll(String username);
	
	@Select("insert into tb_cart(id,name,price,image,number,username) values(#{id},#{name},#{price},#{image},#{number},#{username})")
	Cart insertcart(@Param("id")int id,@Param("name")String name,@Param("price")String price,@Param("image")String image,@Param("number")String number,
			@Param("username")String username);
	
	@Delete("delete from tb_cart where id=#{id}")
	void decart(int id);
	
	@Select("update tb_cart set number=#{number} where id=#{id} and username=#{username}")
	Cart updatecart(@Param("id")int id,@Param("username")String username,@Param("number")String number);
}
