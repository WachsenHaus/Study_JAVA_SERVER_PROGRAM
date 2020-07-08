<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test5/game.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>

<!--  navbar include -->
<jsp:include page="../include/navbar2.jsp">
	<jsp:param value="game" name="thisPage"/>
</jsp:include>

	<h1>game.jsp 페이지입니다.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus architecto odit recusandae totam illo facere quasi aperiam rerum. Officia eligendi quas distinctio sed voluptate ab consequatur autem ex eveniet numquam?</p>

</body>
</html>