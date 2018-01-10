<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_center.aspx.cs" Inherits="dangwei_personal_center" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta name="renderer" content="webkit|ie-comp|ie-stand"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>党员个人主页</title>
	
	<link rel="stylesheet" href="common/css/sccl.css"/>
	<link rel="stylesheet" id="layoutskin" type="text/css" href="common/skin/qingxin/skin.css" />
  </head>
  
  <body>
	<div class="layout-admin">
		<header class="layout-header">
			<span class="header-logo">欢迎党委书记</span> 
			<a class="header-menu-btn" href="javascript:;"><i class="icon-font">&#xe600;</i></a>
			<ul class="header-bar">
				<li class="header-bar-nav">
					<a href="javascript:;">个人设置<i class="icon-font" style="margin-left:5px;">&#xe60c;</i></a>
					<ul class="header-dropdown-menu">
						<li><a href="personal_info.aspx">个人信息</a></li>
                        <li><a href="change_password.aspx">修改密码</a></li>
						<li><a href="../user_login.aspx">退出</a></li>
					</ul>
				</li>				
			</ul>
		</header>
		<aside class="layout-side">
			<ul class="side-menu"/>
			
		</aside>
		
		<div class="layout-side-arrow"><div class="layout-side-arrow-icon"><i class="icon-font">&#xe60d;</i></div></div>
		
		<section class="layout-main">
			<div class="layout-main-tab">
				<button class="tab-btn btn-left"><i class="icon-font">&#xe60e;</i></button>
                <nav class="tab-nav">
                    <div class="tab-nav-content">
                        <a href="javascript:;" class="content-tab active" data-id="home.html">首页</a>
                    </div>
                </nav>
                <button class="tab-btn btn-right"><i class="icon-font">&#xe60f;</i></button>
			</div>
			<div class="layout-main-body">
				<iframe class="body-iframe" name="iframe0" width:"100%" height:"99%" src="home.html" frameborder="0" data-id="home.html" seamless></iframe>
			</div>
		</section>
	</div>
	<script type="text/javascript" src="common/lib/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="common/js/sccl.js"></script>
	<script type="text/javascript" src="common/js/sccl-util.js"></script>
  </body>
</html>