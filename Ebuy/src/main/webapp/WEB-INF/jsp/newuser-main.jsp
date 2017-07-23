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
<div class="navbar navbar-fixed-top my-navbar ">
 <div class="container">
  <div class="row"> 
        <div class="col-md-10  col-sm-6"  > 
           <a>亿玛欢迎您</a>
        </div>
        <div class="col-md-2">
					    <a href="loginForm"  >登录</a>
					    		&nbsp;&nbsp;
						<a  href="register"  >注册</a> 
						
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
 

 <div class="container">
   
    	<div id="carousel1" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carousel1" data-slide-to="0" class="active"> </li>
            <li data-target="#carousel1" data-slide-to="1" class=""> </li>
            <li data-target="#carousel1" data-slide-to="2" class=""> </li>
          </ol>
          <br> <br> <br> <br><br> <br><br>
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
    
    <br><br>
 <hr>
 <!-- PS图片加入 -->
 <div class="container">
		<div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="cream" target="_blank">
                <h3 class="text-center" >洗面奶</h3>
                <em > <img src="images/洗面奶.jpg" alt="洗面奶" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="lotion" target="_blank">
                <h3 class="text-center">润肤露</h3>
                <em > <img src="images/润肤露.jpg" alt="润肤露" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="perfume" target="_blank">
                <h3 class="text-center">香水</h3>
                <em > <img src="images/香水.jpg" alt="香水" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="toner" target="_blank">
                <h3 class="text-center">爽肤水</h3>
                <em > <img src="images/爽肤水.jpg" alt="爽肤水" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="more" target="_blank">
                <h3 class="text-center">精油</h3>
                <em > <img src="images/精油.jpg" alt="精油" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="more" target="_blank">
                <h3 class="text-center">防晒霜</h3>
                <em > <img src="images/防晒霜.jpg" alt="防晒霜" /></em>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="more" target="_blank">
                <h3 class="text-center">洗发水</h3>
                <em > <img src="images/洗发水.jpg" alt="洗发水" /></em>
        </div>

        <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
          <a href="more" target="_blank">
                <h3 class="text-center">沐浴露</h3>
                <em > <img src="images/沐浴露.jpg" alt="沐浴露" /></em>
        </div>
	
</div>
 
 
<hr>
<!-- 洗面奶 -->
<div class="container">
  <div class="row">
        <div class="col-md-6">
            <h1 class="text-left">洗面奶<small>关爱肌肤，更关爱你</small></h1>
        </div>  
        <div class="col-md-6">	
            <h3 class="text-right">Cleansing Cream </h3>
        </div>	
    </div>
</div>
<hr>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/洗面奶1.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>曼秀雷敦（Mentholatum）冰爽活炭洁面乳 </p>
          </div>
          <div class="col-md-5"></div>
              <p>¥40.00</p>
              <p><a href="cream" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div>
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/洗面奶2.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>欧莱雅（LOREAL）&nbsp; &nbsp;控油炭爽洁面膏</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥43.00</p>
              <p><a href="cream" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/洗面奶3.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>妮维雅<br>(NIVEA)<br>控油亮肤洁面液</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥36.00</p>
              <p><a href="cream" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/洗面奶4.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>雅诗兰黛<br>（EsteeLauder）<br>白金保湿洁面乳</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥86.00</p>
              <p><a href="cream" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/洗面奶5.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>兰蔻<br>（LANCOME）<br>新臻白洁面泡沫</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥74.00</p>
              <p><a href="cream" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/洗面奶6.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>碧欧泉<br>（BIOTHERM）<br>净肤细致洁面膏</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥66.00</p>
              <p><a href="cream" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/洗面奶7.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>资生堂<br>(SHISEIDO)<br> 控油补水洗面奶</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥96.00</p>
              <p><a href="cream" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div> 
     <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href="cream"><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
</div>

<hr>
<!-- 润肤乳 -->
<div class="container">
  <div class="row">
        <div class="col-md-6">
            <h1 class="text-left">润肤乳<small>让肌肤散发迷人魅力</small></h1>
        </div>  
        <div class="col-md-6">	
            <h3 class="text-right">Body Lotion</h3>
        </div>	
    </div>
</div>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/润肤乳1.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>强生美肌<br>（Johnson）<br>悠然舒缓润肤乳</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥33.00</p>
              <p><a href="lotion" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div>
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/润肤乳2.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>凡士林<br>（Vaseline）<br>芦荟舒缓润肤乳</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥56.00</p>
              <p><a href="lotion" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/润肤乳3.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>妮维雅<br>（NIVEA）<br>保湿滋润润肤乳</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥28.00</p>
              <p><a href="lotion" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/润肤乳4.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>百雀羚<br>（PECHOIN）<br>止痒抗燥润肤乳</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥35.00</p>
              <p><a href="lotion" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/润肤乳5.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>安利<br>（Amway）<br>深沉护理润肤乳</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥86.00</p>
              <p><a href="lotion" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/润肤乳6.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>雅芳<br>（AVON）<br>淡香滋润润肤乳</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥54.00</p>
              <p><a href="lotion" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/润肤乳7.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>欧舒丹<br>（L’OCCITANE）<br>玫瑰皇后润肤乳</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥229.00</p>
              <p><a href="lotion" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div> 
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href="lotion"><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
  </div> 
</div>
<hr>
<!-- 香水 -->
<div class="container">
  <div class="row">
        <div class="col-md-6">
            <h1 class="text-left">香水<small>彰显无限摩登魅力</small></h1>
        </div>  
        <div class="col-md-6">	
            <h3 class="text-right">Perfume</h3>
        </div>	
    </div>
</div>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/香水1.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>香奈儿<br>（Chanel）<br>粉色柔情淡香水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥358.00</p>
              <p><a href="perfume" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div>
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/香水2.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>兰蔻<br>（LANCOME）<br>午夜玫瑰淡香水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥499.00</p>
              <p><a href="perfume" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/香水3.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>阿迪达斯<br>（Adidas）<br>男士古龙香水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥185.00</p>
              <p><a href="perfume" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/香水4.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>卡文克莱<br>（CalvinKlein）<br>绝色魅影淡香水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥299.00</p>
              <p><a href="perfume" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/香水5.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>古驰<br>（GUCCI）<br>绚丽栀子淡香水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥850.00</p>
              <p><a href="perfume" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/香水6.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>宝格丽<br>（BVLGARI）<br>馥郁玫瑰淡香水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥288.00</p>
              <p><a href="perfume" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/香水7.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>博柏利<br>（BURBERRY)<br>红粉恋歌淡香水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥269.00</p>
              <p><a href="perfume" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div> 
     <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href="perfume"><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
  </div> 
</div> 
<hr>
<!-- 爽肤水 -->
<div class="container">
  <div class="row">
        <div class="col-md-8">
            <h1 class="text-left">爽肤水<small>纯手工采酿，只为您的肌肤</small></h1>
        </div>  
        <div class="col-md-4">	
            <h3 class="text-right">Toner</h3>
        </div>	
    </div>
</div>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/爽肤水1.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>曼秀雷敦<br>(Mentholatum)<br>男士能量爽肤水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥76.00</p>
              <p><a href="toner" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
     </div>
      <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/爽肤水2.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>欧莱雅<br> （LOREAL）<br>葡萄精华爽肤水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥138.00</p>
              <p><a href="toner" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/爽肤水3.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>兰蔻<br>（LANCOME）<br>清滢洁柔爽肤水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥399.00</p>
              <p><a href="toner" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/爽肤水4.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>玉兰油 <br>（Olay）<br>保湿美白爽肤水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥78.00</p>
              <p><a href="toner" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/爽肤水5.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>自然堂<br>（CHANDO）<br>活泉矿物爽肤水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥89.00</p>
              <p><a href="toner" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/爽肤水6.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>雅诗兰黛<br>（EsteeLauder）<br>红石榴爽肤水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥275.00</p>
              <p><a href="toner" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div>
       <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
      <div class="thumbnail"> <img src="images/爽肤水7.1.jpg" alt="Thumbnail Image 1" class="img-responsive">
        <div class="caption">
          <div class="col-md-7" > 
            <p>倩碧<br>（CLINIQUE）<br>男士保湿爽肤水</p>
          </div>
          <div class="col-md-5"></div>
              <p>¥189.00</p>
              <p><a href="toner" class="btn btn-success" role="button"> 立即购买</a></p>
        </div>
       </div>
      </div> 
     <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6">
	      <div class="thumbnail"> 
	       <a href="toner"><img src="images/更多.png" alt="Thumbnail Image 1" class="img-responsive"></a>
	      </div> 
      </div> 
  </div> 
</div> 



<hr>  
  <div>当前在线人数：${applicationScope.count}</div>
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