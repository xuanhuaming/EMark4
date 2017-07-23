
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>我的订单</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container">
  <div class="row"> 
        <div class="col-md-10  col-sm-6"  > 
           <a>亿玛欢迎您</a>
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
  　<div class="col-md-2">
  　   <img src="images/图标.jpg" class="img-responsive" alt="">
  　</div>
   <div class="col-md-8">
      	<div class="navbar navbar-default " role="navigation">
             <ul class="nav nav-pills  nav-justified">
                <li ><a href="main">首页</a></li>
                <li><a href="shop">精选</a></li>
                 <li><a href="collection.action?username=${ sessionScope.user.username }" >收藏</a></li>
                <li><a href="order.action?username=${ sessionScope.user.username }">订单</a></li>
             </ul>
    	 </div>
   </div>
   <div class= "col-md-1">
     	<p><a href="cart.action?username=${ sessionScope.user.username }"  class="btn btn-success btn-lg"><span class="glyphicon glyphicon-shopping-cart"></span> <strong>购物车</strong> </a>  </p>     
    </div>
   </div>
  <div class="container">
   <h2 style="color: rgb(68,157,68);">我的订单</h2>
    <table class="table table-condensed" border="1">
     	<thead>
        	<tr> 
            	<th>订单号</th>     
                <th >运送地址</th>
                <th >联系电话</th>
                <th >总金额 </th>
                <th >状态</th>
            </tr>
       </thead>
            <c:forEach items="${requestScope.order_list }" var="order">
             <tr >
             	<td style="vertical-align: middle;">${order.oid } </td>
             	<td style="vertical-align: middle;">${order.address }</td>
             	<td style="vertical-align: middle;">${order.phone}</td>
             	<td style="vertical-align: middle;">${order.totalprice}</td>
             	<td style="vertical-align: middle;">${order.status} </td>
             </tr>
            </c:forEach>
     </table>
 </div>

</body>
</html>
