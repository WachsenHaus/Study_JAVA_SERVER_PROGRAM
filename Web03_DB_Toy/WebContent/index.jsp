<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="login/login.jsp" method="post">
		<label for="id">id</label>
		<input type="text" id="id" name="id" />
		<label for="pwd">password</label>
		<input type="password" id="pwd" name="pwd" />
		<button type="submit">로그인</button>
		<a href="login/signup.jsp">회원가입하러가기</a>
	</form>
</body>
</html>