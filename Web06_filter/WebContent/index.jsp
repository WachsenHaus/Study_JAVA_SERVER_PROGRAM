<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String id = (String)session.getAttribute("id");
 	boolean isLogged = id != null ? true:false;
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<%if(isLogged){ %>
		<h1><%=id %>님이 로그인하셨습니다. 환영합니다.</h1>
		<a href="./test/logout.jsp">로그아웃</a>

	<%}else{ %>
		<h3>가상의 로그인 폼</h3>
		<form id="loginForm" action="test/login.jsp" method="post">
			<input type="text" name="id" placeholder="아이디" />
			<input type="password" name="pwd" placeholder="비밀번호" />
			<button type="submit">전송</button>	
		</form>
	<%} %>
	
	
	
	
	<h4>인덱스 페이지 입니다</h1>
	<form action="test/insert.jsp" method="post">
		<input type="text" name="msg" placeholder="서버에 할말 입력..." />
		<button type="submit">전송</button>
	</form>

</body>
</html>