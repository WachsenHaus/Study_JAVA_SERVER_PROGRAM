<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//클라이언트가 폼 전송한 내용을 읽어온다.
	request.setCharacterEncoding("utf-8");
	String nick = request.getParameter("nick");
	//HttpSession 개체에 담는다. (session 영역에 담는다);
	session.setAttribute("nick", nick);
	
	//60초 동안 새로운 요청을 하지 않았을때
	session.setMaxInactiveInterval(60);
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/save.jsp</title>
</head>
<body>
	<p><strong><%=nick %></strong> 이라는 닉네임을 기억 하겠습니다.</p>
	<p>60초 동안 아무런 요청도 하지 않으면 삭제 됩니다.</p>
	<a href="../index.jsp">인덱스로 이동하기</a>
</body>
</html>