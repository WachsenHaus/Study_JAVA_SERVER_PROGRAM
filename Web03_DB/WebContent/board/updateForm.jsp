<%@page import="test.board.dto.boarddto"%>
<%@page import="test.board.dao.boarddao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

int num = Integer.parseInt(request.getParameter("num"));

boarddao dao = boarddao.getInstance();
boarddto dto = dao.getData(num);




%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/updateForm.jsp</title>
</head>
<body>
<h1>글 수정 페이지입니다.</h1>
	<form action="update.jsp" method="post">
		<input type="hidden" name="num" value=<%=num %>  />
		<input type="text" value=<%=num %> disabled/>
		<label for="writer">작성자</label>
		<input type="text" name="writer" id="writer" value="<%=dto.getWriter()%>"/><br />
		<label for="title">제목</label>
		<input type="text" name="title" id="title" value="<%=dto.getTitle()%>"/><br />
		<label for="content">내용</label><br />
		<textarea name="content" id="content" cols="10"><%=dto.getContent() %></textarea><br />
		<input type="submit" value="수정하기" />
		<input type="reset" value="취소 " />
	</form>



</body>
</html>