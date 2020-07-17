<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//1. 정보를 받아온다.
String id = (String)session.getAttribute("id");
boolean isLogged = (id == null) ? false:true;
String email = request.getParameter("email");
String profile = request.getParameter("profile");
if(profile.equals("null")){//프로필 이미지를 수정하지 않으면
	profile = null;
}

//2. dto로 넘겨서 수정한다. ( 이번에는 정보가 간단하니가 그냥 단일 인자로 넘기자.)
UsersDao dao = UsersDao.getInstace();
boolean isSucc = dao.update(id, email,profile);
if(isSucc)
{
	response.sendRedirect("./info.jsp");
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