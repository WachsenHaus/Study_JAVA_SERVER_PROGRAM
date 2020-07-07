<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1/main.jsp</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		String name = "영훈";
	%>
	
	<h1>main.jsp페이지입니다 </h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus porro tempora enim neque similique magni illum laboriosam cumque rem suscipit tempore iure vitae at atque saepe non earum eum facere!</p>
	<a href="other.jsp">다른 페이지</a>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>