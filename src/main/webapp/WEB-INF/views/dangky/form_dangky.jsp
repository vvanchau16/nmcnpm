<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>
<base href="${pageContext.servletContext.contextPath}/"> 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<table class = "table table-hover">
	<tr> 
		<th>Tên Đăng Nhập</th>
		<th>Mật Khẩu</th>
		<th>Tình trạng</th>
		<th>Mã quyền</th>
	</tr>
	<c:forEach var = "t" items = "${taiKhoan}">
		<tr>
			<td>${t.tenDN}</td>
			<td>${t.matkhau}</td>
			<td>${t.tinhtrang}</td>
			<td>${t.tenquyen.maquyen}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>