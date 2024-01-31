<%@page import="com.as.domain.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	//                    键(key)  值(value))
	pageContext.setAttribute("name", "mike");
	request.setAttribute("name", "allen");
	session.setAttribute("name", "李强");
	application.setAttribute("name", "赵云");
	//从小到大取4大作用域的值
	
	Users users=new Users();
	users.setUname("小明");
	users.setUpwd("123abc");
	request.setAttribute("users", users);
	
	
		
	
%>

<h1><%=request.getAttribute("name") %></h1>
<hr>
<%-- ${写对应4大作用域的键,得到键对应的值 } --%>
<h1>${name }</h1>
<h2>${users }</h2>
<h2>${users.uname }--${users.upwd }</h2>

</body>
</html>