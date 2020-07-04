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

<form action="addInfo" method="post">
	<label for="name">식당이름</label>
	<input type="text" name="name" id="name"/>
	<label for="addr">주소</label>
	<input type="text" name="addr" id="addr"/>
	<label for="menu">음식이름</label>
	<input type="text" name="menu" id="menu"/>
	<label for="price">가격</label>
	<input type="text" name="price" id="price"/>
	<label for="grade">평점</label>
	<input type="text" name="grade" id="grade"/>
	<label for="content">내용</label>
	<textarea name="content" id="content" cols="30" rows="10"></textarea>
	<button type="submit">업데이트</button>
</form>
</body>
</html>