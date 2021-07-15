<%@page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>新增</title>
		<link rel="stylesheet" href="${basePath}static/css/css/styles.css"/>
		<link rel="stylesheet" type="text/css" href="${basePath}static/css/css/font-awesome.min.css"/>
		<script src="${basePath}static/js/jquery-3.5.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<div class="add">
			<button class="fa fa-arrow-left">
				<i class="fa fa-back"></i>
				返回
			</button>
			<table class="tableadd">
				<tr>
					<td>用户名</td>
					<td><input type="text"></td>
					<td>用户名</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>用户名</td>
					<td><input type="text"></td>
					<td>用户名</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>用户名</td>
					<td><input type="text"></td>
					<td>用户名</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<button class="refresh">
							<i class="fa fa-refresh"></i>
							重置
						</button>
						<button class="save">
							<i class="fa fa-save"></i>
							提交
						</button>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>
