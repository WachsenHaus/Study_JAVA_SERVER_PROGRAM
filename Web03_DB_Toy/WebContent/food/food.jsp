<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
UsersDao dao = UsersDao.getInstance();
String currentId = dao.getId();
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><%=currentId%>님의 미슐랭 가이드</h1>
</body>
</html>