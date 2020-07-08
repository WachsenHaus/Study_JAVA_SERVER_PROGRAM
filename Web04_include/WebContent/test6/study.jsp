<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test6/study.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
<jsp:include page="../include/navbar2.jsp">
	<jsp:param value="study" name="thisPage"/>
</jsp:include>
	<h1>study.jsp 페이지입니다.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus architecto odit recusandae totam illo facere quasi aperiam rerum. Officia eligendi quas distinctio sed voluptate ab consequatur autem ex eveniet numquam?</p>

<script>
console.log("안돼!");
</script>
</body>
</html>