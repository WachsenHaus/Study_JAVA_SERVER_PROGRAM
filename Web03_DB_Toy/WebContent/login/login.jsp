<%@page import="test.users.dto.usersdto"%>
<%@page import="test.users.dao.usersdao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
System.out.println("비번!");
System.out.println(pwd);

//1. 데이터베이스에서 데이터를 가져와비교한다.
usersdao dao = usersdao.getInstance();
usersdto dto = dao.select(id);
boolean isSucc = false;
if(dto != null)
{
	String mId = dto.getId();
	String mPwd = dto.getPwd();
	if(id.equals(mId) && pwd.equals(mPwd))
	{
		isSucc = true;
		//싱글톤 아이디를 정해준다.
		System.out.println("아이디셋팅" + id);
		dao.setId(id);
	}
}
//2. 정보가 동일하게 존재하면. 로그인을 성공시키고. 다음 페이지로 이동시킨다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%if(isSucc){ %>
	
	<script>
		location.href="../food/food.jsp";
	</script>
	
<%}else{ %>
	<script>
		alert("회원아이디가없습니다...");
		location.href="../index.jsp";
	</script>

<%} %>
</body>
</html>