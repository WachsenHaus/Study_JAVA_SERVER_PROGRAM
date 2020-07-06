<%@page import="test.board.dao.boarddao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));
boarddao.getInstance().delete(num);
response.sendRedirect("list.jsp");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail/delete.jsp</title>
</head>
<body>

</body>
</html>