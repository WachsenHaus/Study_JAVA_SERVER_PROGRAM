<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/sub/fortune.jsp</title>
</head>
<body>
<%
	String[] mFortuneAnalects = {
			"돈이 들어온답니다.",  
			"누군가 당신을 응원합니다..",  
			"모든일이 잘되는 오늘!.", 
			"좋은 연이 닿는답니다."
			};
	Random r= new Random();
	int getLucckyNum = r.nextInt(mFortuneAnalects.length);
%>
<p>오늘의 운세는 ?<%=mFortuneAnalects[getLucckyNum] %></p>
</body>
</html>