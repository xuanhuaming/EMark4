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
<title>欢迎您登录亿玛        </title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
 <script>
  window.onload = function(){
    var oForm = document.getElementById('loginForm');
    var oUser = document.getElementById('loginname');
    var oPswd = document.getElementById('password');
    var oRemember = document.getElementById('remember');
    //页面初始化时，如果帐号密码cookie存在则填充
    if(getCookie('loginname') && getCookie('password')){
      oUser.value = getCookie('loginname');
      oPswd.value = getCookie('password');
      oRemember.checked = true;
    }
    //复选框勾选状态发生改变时，如果未勾选则清除cookie
    oRemember.onchange = function(){
      if(!this.checked){
        delCookie('loginname');
        delCookie('password');
      }
    };
    //表单提交事件触发时，如果复选框是勾选状态则保存cookie
    oForm.onsubmit = function(){
      if(remember.checked){ 
        setCookie('loginname',oUser.value,7); //保存帐号到cookie，有效期7天
        setCookie('password',oPswd.value,7); //保存密码到cookie，有效期7天
      }
    };
  };
  //设置cookie
  function setCookie(name,value,day){
    var date = new Date();
    date.setDate(date.getDate() + day);
    document.cookie = name + '=' + value + ';expires='+ date;
  };
  //获取cookie
  function getCookie(name){
    var reg = RegExp(name+'=([^;]+)');
    var arr = document.cookie.match(reg);
    if(arr){
      return arr[1];
    }else{
      return '';
    }
  };
  //删除cookie
  function delCookie(name){
    setCookie(name,null,-1);
  };
</script>
<body >
<br>
<div class=" container" >
	<div class="row">
		        		<div class="col-md-9 col-sm-6" >
		            		<p><a href="main"><button type="button" class="btn btn-success btn-lg">  <span class="glyphicon glyphicon-home" ></span> <strong>亿玛</strong><br>EMark.com</button></a> 
		           		 </div>        
  </div>
    <div class="row">
	
				<div class="panel panel-login">
					<div class="panel-heading">
							<div class="text-center">
                            	<h1 style="color: rgb(68,157,68);" >欢迎登录</h1> 
							</div>
			       </div>
	<form class="form-horizontal" action="login" method="post" id="loginForm" >
		<div class="col-md-6 col-md-offset-3 " >
     <div class="input-group input-group-lg">
            <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="text" name="loginname" id="loginname" class="form-control" placeholder="Loginname">
     </div>
        <br>
        <br>
        <div class="input-group input-group-lg">
         <span class="glyphicon glyphicon-lock input-group-addon"></span>
            <input type="password" name="password" id="password" class="form-control" placeholder="Password">
  
        </div>
        <br>
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<div class="checkbox" >
							 <label><input type="checkbox" style="width:15px;height:15px" id="remember"/>记住密码</label>
						</div>
					</div>
				</div>
                <div class="form-group ">
                 <div class="col-md-5 col-md-offset-1 col-sm-6 ">
                    <a href="findpassword"> 找回密码</a>
                 </div>
                 <div class="col-md-5 col-md-offset-1 col-sm-6 ">
                    <a href="register"> 免费注册</a>
   				 </div>
 	           </div>
 	           <div class="form-group">
					<div class="col-sm-offset-5 col-sm-6" align="center">
						 <span><button type="submit" class="btn btn-success">立即登录</button></span>
						&nbsp;&nbsp; &nbsp; <span><a href="adminloginForm" class="btn btn-warning">管理员登录</a></span>
					<div>
				</div>
			   </div>
     </div>
     </div>
	</form>			
  </div>
  </div>
</div>
	
                




<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>
