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
<title>订单管理</title>

<!-- Bootstrap -->
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
 <div class="container">
  <div class="row"> 
        <div class="col-md-10  col-sm-6"  > 
           <a>亿玛欢迎您</a>
        </div>
        <div class="col-md-2">
			<a href="loginForm"  >用户登录</a>
	 	 </div>  
   </div>              
 </div>    <br> <hr>
 <div class="container">
   <h2 style="color: rgb(68,157,68);">查询订单</h2>
    <table class="table table-condensed" border="1">
     	<thead>
        	<tr> 
            	<th>订单号</th>  
            	<th>用户名</th>   
                <th >运送地址</th>
                <th >联系电话</th>
                <th >总金额 </th>
                <th >状态</th>
            </tr>
       </thead>
            <c:forEach items="${requestScope.order_list }" var="order">
             <tr >
             	<td style="vertical-align: middle;">${order.oid } </td>
             	<td style="vertical-align: middle;">${order.username }</td>
             	<td style="vertical-align: middle;">${order.address }</td>
             	<td style="vertical-align: middle;">${order.phone} </td>
             	<td style="vertical-align: middle;">${order.totalprice} </td>
             	<td style="vertical-align: middle;">
             		<form action="updateorder"  method="post">
             			<input type="hidden" id="oid" name="oid" value="${order.oid}"/>
             			<input type="hidden" id="address" name="address" value="${order.address}"/>
             			<input type="hidden" id="phone" name="phone" value="${order.phone}"/>
             			<input type="hidden" id="totalprice" name="totalprice" value="${order.totalprice}"/>
             			<input type="text" id="status" name="status" value="${order.status}" placeholder="发货中/已发货/已收货"/>
             			<button class="btn btn-default ">修改状态</button>   
             		</form>
             	</td>
             </tr>
            </c:forEach>
     </table>
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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>