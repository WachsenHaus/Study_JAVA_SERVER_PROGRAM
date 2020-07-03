<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="sign.jsp" method="post">
		<label for="id">id</label>
		<input type="text" id="id" name="id" />
		<label for="pwd">password</label>
		<input type="password" id="pwd" name="pwd" />
		<button type="submit">회원가입</button>
		<a href="../index.jsp">취소하기</a>
	</form>
</body>
</html>