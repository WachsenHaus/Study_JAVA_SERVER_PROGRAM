<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title.jsp</title>
</head>
<body>
<%
	int num=10;
	String name = "유재석";
	Date d = new Date();
	String now = d.toString();
%>
	<p>현재시간 :<%out.println(now); %> </p>
	<p>현재시간 :<%=now%></p>
</body>
</html>