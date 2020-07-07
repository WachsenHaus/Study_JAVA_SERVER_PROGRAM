<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
include 디렉티브를 이용해서 jsp 페이지를 인클루드하면
해당 페이지에 인클루드된 jsp페이지가 합쳐져셔 jsp페이지가 만들어진다.
결국 실행시점에 사용되는 jsp페이지는 1개만 사용된다.
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1/other.jsp</title>
</head>
<body>
	<%@include file="header.jsp" %>
	
	<h1>other.jsp 페이지입니다.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam nisi facilis velit recusandae tempore tenetur consectetur optio similique accusamus quas cupiditate mollitia ratione nemo eius deserunt! Sequi vero error quam?</p>
	<a href="main.jsp">main 페이지</a>
	
	<%@include file="footer.jsp" %>
</body>
</html>