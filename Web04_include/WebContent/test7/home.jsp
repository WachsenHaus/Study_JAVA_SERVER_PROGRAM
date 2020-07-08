<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test6/home.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
	<%--include될 jsp페이지는 반드시 상대경로로 찾아 가야한다. --%>
	<%--thisPage 라는 파라미터 명으로 home이라는 문자열 전달하기. --%>
	<jsp:include page="../include/navbar2.jsp">
		<jsp:param value="home" name="thisPage"/>
	</jsp:include>
	<form action="" method="post"></form>
	<h1>home.jsp</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita dolores architecto quod quia doloremque magnam earum officiis fugit excepturi consequatur aspernatur quas aliquam inventore suscipit eum dolor repellat. Quae quod.</p>
</body>
</html>