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
<link rel="stylesheet" href="css/bootstrap.min.css">
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
 <div class="container">
   <div class="col-md-2">
      <ul>
            <li class="dropdown">
                <a href="cream" class="dropdown-toggle" data-toggle="dropdown">
                                                                    洗面奶
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="cream">保水补湿</a></li>
                    <li><a href="cream">去油抗痘</a></li>
                    <li><a href="cream">深沉清洁</a></li>
                </ul>
            </li>
            <hr>
            <li class="dropdown">
                <a href="lotion" class="dropdown-toggle" data-toggle="dropdown">
 					润肤乳
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="lotion">美白滋润</a></li>
                    <li><a href="lotion">细致毛孔</a></li>
                    <li><a href="lotion">控油平衡</a></li>
                </ul>
            </li>
            <hr>
            <li class="dropdown">
                <a href="toner" class="dropdown-toggle" data-toggle="dropdown">
 					香水
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="perfume">女士</a></li>
                    <li><a href="perfume">男士</a></li>
                </ul>
            </li>
            <hr>
            <li class="dropdown">
                <a href="perfume" class="dropdown-toggle" data-toggle="dropdown">
 					爽肤水
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="toner">油性肤质</a></li>
                    <li><a href="toner">中性肤质</a></li>
                </ul>
            </li>
         </ul>
   </div>
   <div class="col-md-10">
    <div class="container">
       <c:forEach items="${requestScope.product_list }" var="p">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/${p.image }" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>${p.descripts}</p>
          </div>
          <div class="col-md-5"></div>
             <p>${p.price }</p>
              <p><a href="product.action?id=${p.id }" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div> 
   </c:forEach>
     <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href=""><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
  </div> 
</div> 
   
   </div>

<hr>  

<footer class="text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p>Copyright ©EMark 2017. All rights reserved.</p>
      </div>
    </div>
  </div>
</footer>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>