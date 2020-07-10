<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
session.removeAttribute("id");
//String cPath = request.getContextPath();
//response.sendRedirect(cPath + "/index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
	<script>
		alert("로그아웃되었습니다.");
		location.href = "${pageContext.request.contextPath}/index.jsp";
	</script>
</body>
</html>