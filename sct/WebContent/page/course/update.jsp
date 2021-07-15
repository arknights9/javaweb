<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>修改</title>
		<link rel="stylesheet" href="${basePath}static/css/css/styles.css"/>
		<link rel="stylesheet" type="text/css" href="${basePath}static/css/css/font-awesome.min.css"/>
		<script src="${basePath}static/js/jquery-3.5.1.min.js" type="text/javascript"></script>
		<script  src="${basePath}static/js/jquery-validation-1.14.0/jquery.validate.js" type="text/javascript"></script>
		<script  src="${basePath}static/js/jquery-validation-1.14.0/localization/messages_zh.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(function(){
				$("#addForm").validate({
					rules:{
						cName:"required",
						tId:"required"
					}
				});
			});
		</script>
	</head>
	<body>
		<div class="add">
		<form id="editForm" action="${basePath}course?method=editsubmit" method="post">
		<input type="hidden" name="cId" value="${course.cId}">
			<button class="edit" type="button" onclick="window.history.back(-1);">
				<i class="fa fa-arrow-left"></i>
				返回
			</button>
			<table class="tableadd">
					<tr>
						<td>课程名称</td>
						<td style="color: red;"><input type="text" name="cName" value="${course.cName}"></td>
					</tr>
					<tr>
						<td>老师</td>
						<td>
							<select name="tId">
								<option value="">请选择老师</option>
								<c:forEach items="${teachers}" var="teacher">
									<option 
										<c:if test="${course.teacher.tId == teacher.tId}">
											selected
										</c:if>
									value="${teacher.tId}">${teacher.tName}</option>
								</c:forEach>
							</select>
						</td>
					</tr>
				<tr>
					<td colspan="4" align="center">
						<button  type="reset" class="refresh">
							<i class="fa fa-refresh"></i>
							重置
						</button>
						<button class="remove" type="submit">
							<i class="fa fa-save"></i>
							提交
						</button>
					</td>
				</tr>
			</table>
			</form>
		</div>
	</body>
</html>
