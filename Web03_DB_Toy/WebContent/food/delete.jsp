<%@page import="test.food.dao.fooddao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    	request.setCharacterEncoding("utf-8");
    	int num = Integer.parseInt(request.getParameter("num"));
    	fooddao dao = fooddao.getInstance();
    	if(dao.delete(num)){
    		response.sendRedirect("food.jsp");	
    	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>