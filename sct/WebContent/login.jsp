<%@page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>登录页面</title>
		<style type="text/css">
			*{
				margin: 0px;
				padding: 0px;
				font-family: "microsoft yahei";
			}
			html,boby{
				background-image:url(static/img/background.png);
				background-size:100% 100%;
				height:100%;
			}
			.login{
				position: absolute;
				background-color: rgba(0,0,0,.6);
				top: 25%;
				left: 60%;
				right: 10%;
				bottom: 25%;
				border-radius: 5ps;
			}
			.title,.u,.p,.s,.l,.tips{
				position: absolute;
				width:100%;
			}
			input{
				height: 35px;
				border:0px;
				border-radius: 5px;
				width:80%;
				padding-left:30px;
				box-sizing: border-box;
			}
			.uname{
				background:url(static/img/用户.png) no-repeat left;
				background-color:rgba(255,255,255,1);
				background-size:6%;
			}
			.pwd{
				background:url(static/img/密码.png) no-repeat left;
				background-color:rgba(255,255,255,1);
				background-size:6%;
			}
			button{
				background-color: #467FE6;
				height: 35px;
				width: 80%;
				border: 0px;
				border-radius: 5px;
				color:#FFFFFF;
				font-size: 16px;
			}
			select{
				width:80%;
				height:35px;
				border-radius:4px;
				border:1px solid #E1E1E1;
			}
			.title{
				top:0%;
				bottom:76%;
				text-align: center;
				font-size:25px;
				font-weight: bold;
				padding-top:10px;
				box-sizing: border-box;
				color:#FFFFFF;
			}
			.u{
				top:20%;
				bottom:60%;
				left:10%;
			}
			.p{
				top:40%;
				bottom:40%;
				left:10%;
			}
			.s{
				top:60%;
				bottom:30%;
				left:10%;
			}
			.l{
				top:75%;
				bottom:20%;
				left: 10%;
			}
			.tips{
				top:90%;
				bottom:0%;
				font-size:13px;
				color:red;
				text-align:center;
			}
			</body>
		</style>
	</head>
	<body>
		<div class="login">
				<div class="title">
					学生选课系统
				</div>
				<form action="login" method="post">
					<div class="u">
						<input type="text"  class="uname" name="userName"/>
					</div>
					<div class="p">
						<input type="password" class="pwd" name="password"/>
					</div>
					<div class="s">
						<select name="type">
							<option value="">请选择登录类型</option>
							<option value="0">学生</option>
							<option value="1">教师</option>
							<option value="2">管理员</option>
						</select>
					</div>
					<div class="l">
						<button type="submit">登录</button>
					</div>
				</form>
				<div class="tips">
				    ${error}
				</div>
		</div>
	</body>
</html>
