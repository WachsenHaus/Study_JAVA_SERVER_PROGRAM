<%@page import="test.board.dao.boarddao"%>
<%@page import="test.board.dto.boarddto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

int num = Integer.parseInt(request.getParameter("num"));
boarddto dto = boarddao.getInstance().getData(num);
%>    

    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/detail.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
<div class="navbar navbar-expand-sm navbar-dark bg-info">
	<a class="navbar-brand" href="${pageContext.request.contextPath }/">Acorn</a>

	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/board/list.jsp">게시판</a></li>
	</ul>
</div>

	<h1>글 자세히 보기 페이지입니다.</h1>
	<table class="table table-sm table-hover">
		<tr class="d-flex">
			<th class="col-1">글번호</th>
			<td class="col-11"><%=dto.getNum() %></td>
		</tr>
		<tr class="d-flex">
			<th class="col-1">작성자</th>
			<td class="col-11"><%=dto.getWriter() %></td>
		</tr>
		<tr class="d-flex">
			<th class="col-1">제목</th>
			<td class="col-11"><%=dto.getTitle() %></td>
		</tr>
		<tr class="d-flex">
			<th class="col-1">내용</th>
			<td class="col-11"><textarea  cols="30" rows="10"><%=dto.getContent() %></textarea></td>
		</tr>
		<tr class="d-flex">
			<td class="col-1"></td>
			<td class="col-11">
				<a href="updateForm.jsp?num=<%=dto.getNum() %>">수정</a>
				<a href="javascript:deleteConfirm(<%=dto.getNum() %>)">삭제</a>
			</td>
		</tr>
	</table>
	
	<script>
	function deleteConfirm(num)
	{
		const isDelete = confirm("삭제하시겠습니까?");
		if(isDelete){
			location.href="delete.jsp?num="+num;
		}
	}
	</script>
</body>
</html>