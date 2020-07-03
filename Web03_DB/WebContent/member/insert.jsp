<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String addr = request.getParameter("addr");
//개체를 이용해서 db에 저장한다.
MemberDto dto = new MemberDto();
dto.setName(name);
dto.setAddr(addr);
MemberDao dao = MemberDao.getInstance();
dao.insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>알림</h1>
		<p><strong><%=dto.getName() %></strong>
		회원의 정보가 추가되었습니다.
		<a href="list.jsp">확인</a>
		</p>
	</div>
</body>
</html>