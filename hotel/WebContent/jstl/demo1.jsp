<%@page import="java.util.ArrayList"%>
<%@page import="com.as.domain.Users"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el+jstl</title>
</head>
<body>
<h1>el+jstl搭配使用</h1>
<%
	request.setAttribute("state", 2);
	request.setAttribute("sex", 2);//1--男 2--女
	request.setAttribute("status", 312); //1-空 2-有 3-预约
	
	List<Users> list=new ArrayList<Users>();
// 	public Users( String uname, String upwd, String hotelid, int state, String prompt,
// 			String answer) {
	list.add(new Users("allen1","123a","1",1,"1+1=?","2"));
	list.add(new Users("allen2","123b","1",1,"1+1=?","3"));
	list.add(new Users("allen3","123c","1",1,"1+1=?","4"));
	list.add(new Users("allen4","123d","1",1,"1+1=?","5"));
	request.setAttribute("list", list);
	
%>
${100+200 }

<hr>
<h2>${state==1?"正常":"加锁" }</h2>
<h2>${state eq 1?"正常":"加锁" }</h2>

<h3>${empty age }</h3>
<h3>${empty state }</h3>

<hr>
<c:if test="${sex==1 }">男人</c:if>
<c:if test="${sex==2 }">女人</c:if>
<!-- 相当于else if 语句 -->

<h1>
<c:choose>
	<c:when test="${status==1 }">空房间</c:when>
	<c:when test="${status==2 }">有人</c:when>
	<c:when test="${status==3 }">预约</c:when>
	<c:otherwise>不知道</c:otherwise>
</c:choose>
</h1>

<%-- items="${list }" request中键,遍历的集合 --%>

<!--  var="user" 每次循环读取一个数据,赋给变量user -->
<!-- varStatus循环的状态值
${vs.count} count 从1开始
${vs.index} index 从0开始
 -->
<!--  循环 -->
<c:forEach items="${list }" var="user" varStatus="vs">
<h3>${vs.count}--${vs.index}--${user.uname }-${user.upwd }-${user.prompt }--${user.answer }</h3>

</c:forEach>
</body>
</html>