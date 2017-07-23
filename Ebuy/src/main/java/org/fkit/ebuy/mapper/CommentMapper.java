package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Comment;


/**
 * BookMapper接口
 * */
public interface CommentMapper {

	/**
	 * 查询所有图书
	 * @return 图书对象集合
	 * */
//	@Select(" select * from tb_comment ")
//	List<Comment> findAll( int pid);
	
	@Select("insert into tb_comment(id,username,service,logistics,quality,comments,image1) values(#{id},#{username},#{service},#{logistics},#{quality},#{comments},#{image1})")
	Comment insertcomment(@Param("id")int id,@Param("username")String username,@Param("service")String service,@Param("logistics")String logistics,@Param("quality")String quality,
			@Param("comments")String comments,@Param("image1")String image1);
	
	@Select(" select * from tb_comment where id=#{id}")
	List<Comment> findAll(int id);
}

