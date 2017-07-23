<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>亿玛</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
      <script> 
 $(document).ready(function(){ 
 $('#carousel1').carousel({interval:3000});//每隔3秒自动轮播 
 }); 
  </script>
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
   
    	<div id="carousel1" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carousel1" data-slide-to="0" class="active"> </li>
            <li data-target="#carousel1" data-slide-to="1" class=""> </li>
            <li data-target="#carousel1" data-slide-to="2" class=""> </li>
          </ol>
         
          <div class="carousel-inner" >
            <div class="item"> <img class="img-responsive" src="images/主页1.jpg" alt="thumb">
             
            </div>
            <div class="item active"> <img class="img-responsive" src="images/主页2.jpg" alt="thumb">
              
            </div>
            <div class="item"> <img class="img-responsive" src="images/主页3.jpg" alt="thumb">
     
            </div>
          </div>
          <a class="left carousel-control" href="#carousel1" data-slide="prev"><span class="icon-prev"></span></a> <a class="right carousel-control" href="#carousel1" data-slide="next"><span class="icon-next"></span></a></div>
    </div>

    <div class="container">
    	<h3 style="color: rgb(68,157,68);">更多商品即将登陆，敬请期待!</h3>
    </div>
    <br>
<footer class="text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p>Copyright ©EMark 2017. All rights reserved.</p>
      </div>
    </div>
  </div>
</footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>