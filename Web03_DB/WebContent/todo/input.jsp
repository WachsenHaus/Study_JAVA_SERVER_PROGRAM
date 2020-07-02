<%@page import="java.net.URLEncoder"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String content = request.getParameter("content");
	TodoDao dao = TodoDao.getInstance();
	dao.insert(content);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송</title>
</head>
<body>
<script> location.replace("${pageContext.request.contextPath}/todo/list.jsp")</script>
</body>
</html>