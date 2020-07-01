<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/send.jsp</title>
<link rel="stylesheet" href="/Web02_Servlet/css/bootstrap.css" />
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>

<div class="container">
	<% if(id.equals("gura") && pwd.equals("1234")){%>
		<p class="alert alert-success"><%=id %>님 로그인되었습니다.</p>
	<%}else{ %>
		<p class="alert alert-danger">아이디 혹은 비밀번호가 틀려요.</p>
	<%} %>
</div>

<script>

</script>

</body>
</html>