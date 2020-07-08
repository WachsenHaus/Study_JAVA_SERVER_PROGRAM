<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//session 영역에 "nick"이라는 키값으로 저장된 Stirng type 읽어오기
	String nick = (String)session.getAttribute("nick");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><strong><%=nick %>님 놀러오셨네요 ? </strong></p>
<p>신나게 놀아 보아요</p>
<a href="../index.jsp">인덱스로가기</a>
</body>
</html>