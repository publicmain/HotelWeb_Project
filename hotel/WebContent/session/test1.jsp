<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>session会话对象: 浏览器关闭,对象就失效了</h1>
<h1>用于登录,判断用户是否登录.如果没有登录,不能访问对应资源</h1>
<h2>用于跟踪用户,防止没有受权的页面,让其访问.</h2>
<%
	session.setAttribute("count", 100);
%>
</body>
</html>