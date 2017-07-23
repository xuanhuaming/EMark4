
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>欢迎注册</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<br>
<div class="container">
		<div class="row">
        		<div class="col-md-9">
            		<p><a href="main"><button type="button" class="btn btn-success btn-lg">  <span class="glyphicon glyphicon-home" ></span> <strong>亿玛</strong><br>EMark.com</button></a> 
           		 </div>  
              <div class="col-md-3 " > <br>	<a href="loginForm">已有账号？直接登录</a></div>
		</div>
    	<div class="row">

				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							
							<div class="text-center">
                            	<h1 style="color: rgb(68,157,68);" >欢迎注册</h1>
							</div>
						</div>
					</div>
					
								<form id="register" action="register" method="post" role="form" >
								 <div class="col-md-12">
								 <font color="red">${requestScope.message }</font>
									<div class="form-group">
                                      <div class="col-md-3">  登 录 名 ：</div>
                                   	<div class="col-md-9">
                                   		 <input type="text" name="loginname" id="loginname" tabindex="1" class="form-control" placeholder="Loginname" >
                                    </div> 
								</div>
                                    <br>
									<div class="form-group">
                                    	 <div class="col-md-3"> 密  码 ：</div>
                                         <div class="col-md-9">
										<input type="password" name="password" id="password" tabindex="" class="form-control" placeholder="Password">
                                        </div>
									</div>
                                      <br>
                                    <div class="form-group">
                                      	<div class="col-md-3"> 用户姓名：</div>
                                         <div class="col-md-9">
                                   			 <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" >
                                          </div>
									</div>
                                      <br>
                                     <div class="form-group">
                                    	<div class="col-md-3">邮箱地址：</div>
                                         <div class="col-md-9">
										<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Address" >
                                        </div>
									</div>
                                      <br>
                              
                                    <div class="form-group">
                                    	 <div class="col-md-3"> 联系电话：</div>
                                         <div class="col-md-9">
										<input type="text" name="phonenumber"id="phonenumber"  tabindex="1" class="form-control" placeholder="Phonenumber" >
                                        </div>
									</div>
							
                                    <br><br>
									<div class="form-group">
										<div class="row">
											<div align="center">
												<br>
												<br>
												 <button type="submit" class="btn btn-success btn-lg" >立即注册</button>
											</div>
										</div>
									</div>
								 </div>
								</form>
							</div>
						</div>
					</div>
				</div>


</body>
</html>