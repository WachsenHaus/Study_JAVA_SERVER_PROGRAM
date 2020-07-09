<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String msg = request.getParameter("msg");
	System.out.println("msg:" + msg);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test/insert.jsp</title>
</head>
<body>
	<h1>요청을 처리했습니다.</h1>
</body>
</html>