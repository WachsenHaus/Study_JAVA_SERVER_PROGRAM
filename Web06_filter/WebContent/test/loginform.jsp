<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/loginform.jsp</title>
</head>
<body>
	<h3>가상의 로그인 폼</h3>
	<form id="loginForm" action="login.jsp" method="post">
		<input type="text" name="id" placeholder="아이디" />
		<input type="password" name="pwd" placeholder="비밀번호" />
		<button type="submit">전송</button>	
	</form>
</body>
</html>