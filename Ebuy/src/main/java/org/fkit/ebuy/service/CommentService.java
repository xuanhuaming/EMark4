package org.fkit.ebuy.service;

import java.util.List;
import org.fkit.ebuy.domain.Comment;

/**
 * Book服务层接口
 * */
public interface CommentService {
	
	/**
	 * 查找所有图书
	 * @param id 
	 * @param username 
	 * @return comment对象集合
	 * */

//	List<Comment> getAll(int pid);

	

	Comment comment(int id,  String username,String service, String logistics, String quality, String comments, String image1);

	List<Comment> getAll(int id);

}
