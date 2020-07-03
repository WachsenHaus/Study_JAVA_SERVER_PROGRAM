<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
UsersDao dao = UsersDao.getInstance();
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
UsersDto dto = new UsersDto(id,pwd);
System.out.println("회원가입시 입력 비밀번호 : "+ dto.getPwd());
boolean isSucc = false;
if(dao.insert(dto))
{
	isSucc = true;
	//푸드 테이블을 생성해야함. 해당 아이디 _food로 
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(isSucc){ %>
	<script>
		alert("회원가입이 되었습니다.");
		location.href="../index.jsp";
	</script>
<%}else{ %>
	<script>
		alert("회원가입에 실패했습니다..");
		location.href="../index.jsp";
	</script>

<%} %>
</body>
</html>