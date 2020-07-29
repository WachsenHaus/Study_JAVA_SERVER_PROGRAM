<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test/jstl_test.jsp</title>
</head>
<body>
	<h1>JSTL (jsp Standard Tag Library)</h1>
	<c:forEach var="i" begin="i" end="5">
		<p>안녕 ${i }</p>
	</c:forEach>

<a href="jstl_test2.jsp">다음 예제 2</a>
</body>
</html>