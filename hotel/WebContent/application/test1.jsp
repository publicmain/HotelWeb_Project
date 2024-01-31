<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>application全局对象:服务器不停,对象一直有效</h1>
<h1>网站的计数器,网上投票</h1>
<%
	application.setAttribute("count", 100);
%>
</body>
</html>