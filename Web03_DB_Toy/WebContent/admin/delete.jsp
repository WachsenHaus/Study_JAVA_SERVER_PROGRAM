<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.food.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
UsersDao dao = UsersDao.getInstance();
FoodDao fDao = FoodDao.getInstance();
boolean isSucc = false;
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		if(confirm("정말 삭제하시겠습니까 ? ") === true)
		{
			<%
				isSucc = true;
			%>
		}
	</script>
	<%if(isSucc){%>
		<%
			fDao.setId(id);
			fDao.deleteSeq();
			fDao.deleteTable();
		%>
		<%if(dao.delete(id) == true) {%>
			<%response.sendRedirect("adminPage.jsp"); %>
		<%}%>
	<%}else{%>
	<%}%>
</body>
</html>