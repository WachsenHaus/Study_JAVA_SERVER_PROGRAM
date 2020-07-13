<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
UsersDao dao = UsersDao.getInstace();
String id = (String)session.getAttribute("id");
UsersDto dto = 	dao.getItem(id);
//1. 기존의 비밀번호를 확인한다.
String oldPwd = request.getParameter("pwd");
String newPwd = request.getParameter("newPwd");
String newPwd2= request.getParameter("newPwd2");
boolean isValid = newPwd.equals(newPwd2);
//2. 기존의 비밀번호가 맞으면 수정된 비밀번호를 업데이트한다.
boolean isSucc = dao.updatePwd(id, newPwd, oldPwd);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/pwd_update_form</title>
</head>
<body>
<%if(isValid){ %>
	<%if(isSucc){ %>
		<script>
			alert("비밀번호가 변경되었습니다..");
			location.href = "${pageContext.request.contextPath}/index.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("비밀번호가 틀렸습니다.");
			location.href = "${pageContext.request.contextPath}/index.jsp";
		</script>
	<%} %>
<%}else{ %>
	<script>
		alert("비밀번호가 틀렸습니다.");
		location.href = "${pageContext.request.contextPath}/index.jsp";
	</script>
<%} %>

</body>
</html>