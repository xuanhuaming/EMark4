
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>购物车</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
  <div class="row"> 
        <div class="col-md-10  col-sm-6"  > 
           <a>易购欢迎你</a>
        </div>
           <div class="col-md-2">
        <c:choose>
		   <c:when test="${ sessionScope.user !=null }">
					<a>${sessionScope.user.username}	</a>
					&nbsp;&nbsp;
					<a href ="newuser-main">注销</a>
			</c:when>
	       <c:otherwise>
					    <a href="loginForm"  >登录</a>
					    		&nbsp;&nbsp;
						<a  href="register"  >注册</a>
			</c:otherwise>
	  	</c:choose>
	  </div>
   </div>              
       
        
   </div> 
   <hr>
 <div class="container">
  　<div class="col-md-1">
  　   <img src="images/图标.png" class="img-responsive" alt="">
  　</div>
   <div class="col-md-9">
      	<div class="navbar navbar-default " role="navigation">
             <ul class="nav nav-pills  nav-justified">
                <li ><a href="main">网站首页</a></li>
                <li><a href="shop">精选商城</a></li>
                <li><a href="collection.action?username=${ sessionScope.user.username }" >我的收藏</a></li>
                <li><a href="order.action?username=${ sessionScope.user.username }">我的订单</a></li>
             </ul>
    	 </div>
   </div>
   <div class= "col-md-2">
     	 <p><a href="cart.action?username=${ sessionScope.user.username }" class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-home"></span> <strong>购物车</strong> </a>  </p>     
    </div>
   </div>
  <hr>
 <form class="form-horizontal" action="submitcomment" method="post" >
 
 <div class="input-group input-group-lg">
     	<input name="id" id="id" type="hidden" value="1" />
     	<input name="username" id="username" type="hidden" value="${sessionScope.user.username}" />
  </div>
  <div class="form-group">
     <ul>
                <li>商品质量:   <a class="text-danger"><input type="text" id ="quality" name ="quality" class="form-control" >分 </a></li>
            	<li>卖家服务:   <a class="text-danger"><input type="text" id ="service" name="service" class="form-control" >分 </a> </li>
                <li>物流服务:   <a class="text-danger"><input type="text" id ="logistics" name ="logistics" class="form-control" >分 </a></li>
     </ul>
   </div>
   <div class="input-group input-group-lg">
     	<input type="text" id="comments" name="comments" class="form-control"  style="width:600px;height:270px;">
   </div>
   <div class="input-group input-group-lg">
    		 <label for="inputfile">添加图片</label>
	    	 <input type="file" id="image1" name="image1" class="form-control" >
</div>
	  <div class="input-group input-group-lg">
			<input type="submit" value="发表评论">
	</div>
</form>

</body>
</html>
