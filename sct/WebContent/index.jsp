<%@page contentType="text/html;charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>系统首页</title>
		<link rel="stylesheet" href="${basePath}static/css/css/styles.css"/>
		<link rel="stylesheet" type="text/css" href="${basePath}static/css/css/font-awesome.min.css"/>
		<script src="${basePath}static/js/jquery-3.5.1.min.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(function(){
				$('.menux p').click(function(){
					$(this).next('ul').slideToggle(200);
				});
				$('.menux ul a').click(function(){
					$('iframe').attr("src",$(this).attr("url"));
					$('.menu_title').html($(this).attr("title"));
				});
				$('.logout').click(function(){
					if(confirm("确定要退出吗？")){
						window.location.href = "logout";
					}
				});
			})
		</script>
	</head>
	<body>
		<div class="header">
			<div class="logo">学生选课系统</div>
			<div class="user">
				<i class="fa fa-caret-down point"></i>
				<i class="fa fa-user"></i>
				<c:if test="${type == 2}">
					${user.userName}
				</c:if>
				<c:if test="${type == 1}">
					${user.tName}
				</c:if>
				<c:if test="${type == 0}">
					${user.stuName}
				</c:if>
				<ul>
					<li><a href="javascript:void(0)">修改密码</a></li>
					<li><a href="javascript:void(0)">个人信息</a></li>
					<li><a href="javascript:void(0)" class="logout">退出登录</a></li>
				</ul>
			</div>
		</div>
		<div class="left">
			<div class="title">
				<i class="fa fa-home"></i>
				系统功能
			</div>
			<div class="menux">
				<c:if test="${type == 2}">
				<p>
					<i class="fa fa-info-circle"></i>
					<i class="fa fa-angle-right point"></i>
					管理员权限
				</p>
				<ul>
					<li>
						<a href="javascript:void(0);" url="${basePath}student?method=list" title="学生管理">
						<i class="fa fa-caret-right"></i>
						学生管理
						</a>
					</li>
					<li>
						<a href="javascript:void(0);" url="${basePath}teacher?method=list" title="老师管理">
						<i class="fa fa-caret-right"></i>
						老师管理
						</a>
					</li>
					<li>
						<a href="javascript:void(0);" url="${basePath}course?method=list" title="课程管理">
						<i class="fa fa-caret-right"></i>
						课程管理
						</a>
					</li>
					<li>
						<a href="javascript:void(0);" url="wait.jsp" title="子功能3">
						<i class="fa fa-caret-right"></i>
						分数区间统计
						</a>
					</li>
					<li>
						<a  href="javascript:void(0);" url="wait.jsp"  title="及格率">
							<i class="fa fa-caret-right"></i>
							及格率
						</a>
					</li>
				</ul>
				</c:if>
				<c:if test="${type == 1}">
				<p>
					<i class="fa fa-info-circle"></i>
					<i class="fa fa-angle-right point"></i>
					老师权限
				</p>
				<ul>
					<li>
						<a href="javascript:void(0);" url="${basePath}sc?method=tc" title="分数管理">
						<i class="fa fa-caret-right"></i>
						分数管理
						</a>
					</li>
					<li>
						<a href="javascript:void(0);" url="wait.jsp" title="查询统计">
						<i class="fa fa-caret-right"></i>
						查询统计
						</a>
					</li>
				</ul>
				</c:if>
				<c:if test="${type == 0}">
				<p>
					<i class="fa fa-info-circle"></i>
					<i class="fa fa-angle-right point"></i>
					学生权限
				</p>
				<ul>
					<li>
						<a href="javascript:void(0);" url="${basePath}sc?method=select" title="选课">
						<i class="fa fa-caret-right"></i>
						选课
						</a>
					</li>
					<li>
						<a href="javascript:void(0);" url="wait.jsp" title="查询统计">
						<i class="fa fa-caret-right"></i>
						查询统计
						</a>
					</li>
				</ul>
				</c:if>
			</div>
		</div>
		<div class="main">
			<div class="location">
				<i class="fa fa-home"></i>
				<span class="menu_title">用户管理</span>
			</div>
			<iframe src="main.jsp" width="100%" height="100%" frameborder="0px"></iframe>
		</div>
	</body>
</html>
