<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/style.css"
	type="text/css"></link>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/assets/css/theme.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/assets/css/font-awesome.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/admin.css"
	type="text/css"></link>
<script
	src="<%=request.getContextPath() %>/assets/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<title>系统管理</title>
</head>
<body>
	<div class="w11 center-block">
		<%if ((String) request.getAttribute("msg") == "添加成功") {%>
		<script>alert("添加成功");</script>
		<%}%>
		<%if ((String) request.getAttribute("msg") == "编辑成功") {%>
		<script>alert("编辑成功");</script>
		<%}%>
		<%if ((String) request.getAttribute("msg") == "删除成功") {%>
		<script>alert("删除成功");</script>
		<%}%>
		<!-- 列表显示系统的基地信息start -->
		<c:if test="${empty pager.list}">
			<h2>系统中还没有基地</h2>
			<a href="<%=request.getContextPath()%>/basemgr/sysadmin/addbase">添加基地</a>
		</c:if>
		<c:if test="${not empty pager.list}">
			<h3 style="text-align: center; margin-bottom: 20px;">所有基地</h3>
			<table class="table table-bordered table-hover">
				<tr>
					<td>编号</td>
					<td>名称</td>
					<td>地址</td>
					<td>经度</td>
					<td>纬度</td>
					<td>管理员账号</td>
					<td>编辑</td>
					<td>删除</td>
				</tr>

				<c:forEach items="${pager.list}" var="base">
					<tr>
						<td><c:out value="${base.base_id}"></c:out></td>
						<td><c:out value="${base.base_name}"></c:out></td>
						<td><c:out value="${base.base_address}"></c:out></td>
						<td><c:out value="${base.base_lat}"></c:out></td>
						<td><c:out value="${base.base_long}"></c:out></td>
						<td><c:out value="${base.user.username}"></c:out></td>
						<td><a
							href="<%=request.getContextPath()%>/basemgr/sysadmin/editbase?baseId=${base.base_id}">编辑</a></td>
						<td><a
							href="<%=request.getContextPath()%>/basemgr/sysadmin/deletebase?baseId=${base.base_id}">删除</a></td>
					</tr>
				</c:forEach>
			</table>

			<!-- 列表显示系统的基地信息end -->
			<!-- 分页start -->
			<div id="page"></div>
			<script src="<%=request.getContextPath()%>/assets/laypage/laypage.js"></script>
			<script type="text/javascript">
	laypage({
	    cont: 'page',
	    pages: '${pager.pageCount}', 
	    curr: '${pager.pageNumber}', 
	    jump: function(e, first){ 
	        if(!first){ 
	            location.href = '?ps=${pager.pageSize}&pn='+e.curr;
	        }
	    }
	});
</script>
			<!-- 分页end -->
			<div style="position: absolute; right: 20px; width: 100px;">
				<input type="button" class="btn bcm tcw" value="添加基地"
					onclick="location='<%=request.getContextPath()%>/basemgr/sysadmin/addbase'">
			</div>

		</c:if>
	</div>
</body>
</html>