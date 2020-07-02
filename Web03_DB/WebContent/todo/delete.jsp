<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String sNum = request.getParameter("selectedValue");
	System.out.println(sNum);
	TodoDao dao = TodoDao.getInstance();
	dao.delete(Integer.parseInt(sNum));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
console.log(<%=sNum%>);
</script>
<script> location.replace("${pageContext.request.contextPath}/todo/list.jsp")</script> 

</body>
</html>