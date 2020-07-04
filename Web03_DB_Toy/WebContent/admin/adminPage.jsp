<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
UsersDao dao = UsersDao.getInstance();
List<UsersDto> list = dao.getList();
boolean isSucc = false;
if(list != null){
	isSucc = true;
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
	<a href="../index.jsp">home</a>
	<h1>회원 계정 목록입니다.</h1>
	
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%if(isSucc) {%>
			<%for(UsersDto tmp : list){ %>
				<tr>
					<td><%=tmp.getId() %></td>
					<td><%=tmp.getPwd() %></td>
					<td><a href="delete.jsp?id=<%=tmp.getId()%>">삭제</a></td>
				</tr>
			<%} %>
		<%} %>
		</tbody>
	</table>
	
</body>
</html>