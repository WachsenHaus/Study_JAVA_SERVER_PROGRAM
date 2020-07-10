<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String getId = (String)session.getAttribute("id");
boolean isLogged = (getId == null) ? false:true;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="./css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>인덱스 페이지 입니다</h1>
	<ul>
		<!-- url 요청 경로에는 소문자와 언더바를 사용해서 사용한다. -->
		<li><a href="users/signup_form.jsp">회원가입</a></li>
		<%if(isLogged){ %>
			<strong><%=getId %>님 로그인중</strong>
			<li><a href="users/logout.jsp">로그아웃</a></li>
		<%}else{ %>
			<li><a href="users/login_form.jsp">로그인</a></li>
		<%} %>
		
	</ul>
</div>
</body>
</html>