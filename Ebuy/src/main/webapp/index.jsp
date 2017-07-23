
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
<div class="container">
		<div class="row">
        		<div class="col-md-9">
            		<p><a href="main" class="btn btn-danger btn-lg">  <span class="glyphicon glyphicon-home"></span> <strong>易购</strong></a> 
                <a ><strong>欢迎登陆</strong></a> </p>
           		 </div>  
              <div class="col-md-3 " > <br>	<a href="loginForm">已有账号？直接登录</a></div>
              
            
              
		</div>
    	<div class="row">
			<div class="col-md-6 col-md-offset-3" style="padding:150px  5px ; ">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="text-center">
                            	<p>欢迎新会员注册</p> 
							</div>
						</div>
						<hr>
						
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">
								<form id="register" action="register" method="post" role="form" >
									
									<div class="form-group">
									
                                      <div class="col-md-3">  用 户 名：</div>
                                   	<div class="col-md-9">
                                   		 <input type="text" name="loginname" id="loginname" tabindex="1" class="form-control" placeholder="注册用户名" value="">
                                    </div> 
									</div>
                                    <br>
									<div class="form-group">
                                    	 <div class="col-md-3"> 设置密码：</div>
                                         <div class="col-md-9">
										<input type="password" name="password" id="password" tabindex="" class="form-control" placeholder="输入密码">
                                        </div>
									</div>
                                      <br>
									
                                    <div class="form-group">
                                      	<div class="col-md-3"> 真实姓名：</div>
                                         <div class="col-md-9">
                                   			 <input type="text" name="name" id="name" tabindex="1" class="form-control" placeholder="真实姓名" value="">
                                          </div>
									</div>
                                      <br>
                                    <div class="form-group">
                                        <div class="col-md-3">
                                           性      别 :
                                         </div>
                                         <div class="col-md-9  checkbox">
                                                <label><input type="checkbox" id="sex"/>男</label>
                                            
                                                <label><input type="checkbox"  id="sex"/>女</label>
                                           </div>
                                        </div>
                                          <br>
                                        <div class="form-group">
                                    	<div class="col-md-3">邮箱地址：</div>
                                         <div class="col-md-9">
										<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="邮箱地址" value="">
                                        </div>
									</div>
                                      <br>
                                    <div class="form-group">
                                    	 <div class="col-md-3"> 练习电话：</div>
                                         <div class="col-md-9">
										<input type="text" name="phonenumber "id="phonenumber" tabindex="1" class="form-control" placeholder="联系电话" value="">
                                        </div>
									</div>
                                      <br>
                                    <div class="form-group">
                                   		 <div class="col-md-3"> 家庭住址：</div>
                                         <div class="col-md-9">
										   <input type="text" name="family "id="address" tabindex="1" class="form-control" placeholder="家庭住址" value="">
                                        </div>
									</div>
                                    <br><br>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-5 col-sm-offset-4">
												 <button type="submit" class="btn btn-default btn-lg" >立即注册</button>
											</div>
										</div>
									</div>
								
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    
	</div>

</body>
</html>