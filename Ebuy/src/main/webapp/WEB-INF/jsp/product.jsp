<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>商品详情</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
  <div class="navbar navbar-fixed-top my-navbar ">
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
   </div>
      <br><br><br><br><br><br><br><br><br>

 <div class="container" >
 		<c:forEach items="${requestScope.p_list }" var="product">
   <div class="col-md-1" >
   				
     <div class="row">
        <div class="thumbnail"> <img src="images/${product.image }" alt="Thumbnail Image 1" class="img-responsive"></div>
     </div>
   
      <div class="row">
        	<div class="thumbnail"> <img src="images/${product.image2 }" alt="Thumbnail Image 2" class="img-responsive"></div>
      </div>
      
      <div class="row">
      		<div class="thumbnail"> <img src="images/${product.image3 }" alt="Thumbnail Image 3" class="img-responsive"></div>
      </div>
       
      <div class="row">
       		<div class="thumbnail"> <img src="images/${product.image4 }" alt="Thumbnail Image 4" class="img-responsive"></div>
      </div>
    </div>
   <div class="col-md-6" >
   		<div class=" text-center"> <img src="images/${product.image }"  style="width:450px"></div>
   </div>
   <div class="col-md-4 col-md-offset-1">
   		<div><p align="left">${product.name}</p> </div>
        <br>
        <div class="panel panel-default">
            <div class="panel-heading">
                <p>${product.descripts}</p>
            </div>
        </div>
 
        <p>功效   &nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;深层清洁；保湿补水，芬香迷人</p>
        <div><p>规格  &nbsp;  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<button class="btn btn-success"> 150ml</button> &nbsp;  &nbsp;<button class="btn btn-warning"> 250ml</button> &nbsp;  &nbsp; <button class="btn btn-warming"> 350ml</button></p></div>
        <p>价格   &nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;${product.price}   </p>
       	<div class="row">  
                        <div class=" input-group">  
                            <div class="num col-md-3"><p>数量</p></div> 
                            <div class="col-md-4"><input type="text" id="number" value="1"></div> 
                         </div>          
         </div>  
         <p> <div class="col-md-6">已销售： ${product.sales}  件</div> 
             <div class="col-md-6">库存：${product.stock}   件</div> 
         </p>
         <br><br> 
         <form action="newcollect">
         <div class="col-md-6">
	         <div class="col-md-4">
	         		<input type="hidden" name="id" id="id" tabindex="1" class="form-control" value="${product.id}" > 
	                <input type="hidden" name="goodsname" id="goodsname" tabindex="1" class="form-control" value="${product.name}" >
	                <input type="hidden" name="price" id="price" tabindex="1" class="form-control" value="${product.price}" >
	                <input type="hidden" name="image" id="image" tabindex="1" class="form-control" value="${product.image}" >
	                <input type="hidden" name="descripts" id="descripts" tabindex="1" class="form-control" value="${product.descripts}" >
	                <input type="hidden" name="username" id="username" tabindex="1" class="form-control" value="${ sessionScope.user.username }" >
	          </div> 
	           <div class="row">
	                 <button type="submit" class="btn btn-danger btn-lg " >添加收藏</button>
	          </div> 
          </div> 
          </form>   
           <form action="newcart">
           <div class="col-md-6">
		         <div class="col-md-4">
		         		<input type="hidden" name="id" id="id" tabindex="1" class="form-control" value="${product.id}" > 
		                <input type="hidden" name="name" id="name" tabindex="1" class="form-control" value="${product.name}" >
		                <input type="hidden" name="price" id="price" tabindex="1" class="form-control" value="${product.price}" >
		                <input type="hidden" name="image" id="image" tabindex="1" class="form-control" value="${product.image}" >
		                <input type="hidden" name="number" id="number" tabindex="1" class="form-control" value="1" >
		                <input type="hidden" name="username" id="username" tabindex="1" class="form-control" value="${ sessionScope.user.username }" >
		         </div> 
	           	 <div class="col-md-5 col-md-offset-1">
	                 <button type="submit" class="btn btn-success btn-lg " >加入购物车</button>
	             </div> 
	         </div>
            </form>    
        </div>  
   </c:forEach>     
   </div>
   
 
 <hr>

 <div class="container">
 <p>商品评论</p>
<!--   <form action="product.comment" method="post"> -->
 <c:forEach items="${requestScope.comment_list }" var="c">
  <div class="row">
            <h1 class="text-left">商品评论</h1>
    </div>
   <div class="row">
   		<div class="col-md-2">
           <p>用户名 ${c.username}</p>
        </div>
        <div class="col-md-10">
        <div class="row">
         	<ul>
            	<li>商品质量:   <a class="text-danger">${c.quality}分 </a></li>
            	<li>卖家服务:   <a class="text-danger">${c.service}分 </a> </li>
                <li>物流服务:   <a class="text-danger">${c.logistics}分 </a></li>
            </ul> 
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <p>${c.comments}</p>
            </div>
            <div class="row">
            <div class="col-md-2 col-md-offset-2">
             <img src="1.jpg" class="img-responsive">
            </div>
            <div class="col-md-2">
             <img src="1.jpg" class="img-responsive">
            </div>
            </div>
        </div>
             
        </div>
   </div>
   </c:forEach>

</div>

<footer class="text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p>Copyright ©EMark 2017. All rights reserved.</p>
      </div>
    </div>
  </div>
</footer>
<script src="js/jquery-1.11.2.min.js"></script> 
<script src="js/bootstrap.min.js"></script>
</body>
</html>