<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
<%
		List<String> list = new ArrayList<String>();
		list.add("html 공부하기");
		list.add("css 공부하기");
		list.add("javascript 공부하기");
%>
	<h1>오늘 할 일</h1>
	<ul>
	<%for(String data: list){ %>
		<li><%=data%></li>
	<%}%>
	
	</ul>

</body>
</html>