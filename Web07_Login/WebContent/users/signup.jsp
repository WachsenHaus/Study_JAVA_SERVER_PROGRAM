<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");

UsersDto dto = new UsersDto();
UsersDao dao = UsersDao.getInstace();


dto.setId(id);
dto.setPwd(pwd);
dto.setEmail(email);
boolean isSucc =  dao.insert(dto);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSucc){%>
		<h1><%=id %>님이 로그인하셨습니다.</h1>
		<a href=${pageContext.request.contextPath} + "index.jsp">홈으로가기</a>
	<%}else{%>
		<h1>가입이 실패 했습니다.</h1>
		<a href="./signup_form.jsp">다시시도</a>
	<%} %>
</body>
</html>