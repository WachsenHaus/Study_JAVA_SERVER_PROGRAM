<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 로그인 아이디와 비밀번호를 읽어온다.
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	UsersDto dto = new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	//2. DB에 실제로 존재하는지 ( 유효한 정보인지 ) 확인한다.
	boolean isLogged = UsersDao.getInstace().isValid(dto);
	//3. 유효한 정보이면 로그인 처리를 하고 응답.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login</title>
</head>
<body>
<%if(isLogged){ %>
	<%session.setAttribute("id", id); %>
	<p><%=id %>님이 로그인 되었습니다. <a href="../index.jsp">확인</a></p>
<%}else{%>
	<p>아이디 혹은 비밀번호가 틀려요! <a href="login_form.jsp">다시시도</a></p>
<%} %>
</body>
</html>