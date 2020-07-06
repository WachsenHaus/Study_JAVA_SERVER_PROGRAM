<%@page import="test.board.dao.boarddao"%>
<%@page import="test.board.dto.boarddto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
 //요청 인코딩 설정(한글 깨지지 않게)
 
 request.setCharacterEncoding("utf-8");
int num = Integer.parseInt(request.getParameter("num"));
String writer = request.getParameter("writer");
String title = request.getParameter("title");
String content = request.getParameter("content");
//boarddto 개체를 이용해서 db에 저장하고 성공 여부를 리턴받는다.
boarddto dto = new boarddto();
dto.setNum(num);
dto.setWriter(writer);
dto.setTitle(title);
dto.setContent(content);
boolean isSuccess = boarddao.getInstance().update(dto);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/update.jsp</title>
</head>
<body>
	<h1>알림</h1>
	<%if(isSuccess) {%>
		<p>
			<strong><%=num %></strong>글이 수정되었습니다.
			<a href="list.jsp">확인</a>
		</p>
	<%}else{ %>
		<p>
			글 수정이 실패되었습니다.
			<a href="updateForm.jsp">다시 수정하기</a>
		</p>
	<%} %>
</body>
</html>