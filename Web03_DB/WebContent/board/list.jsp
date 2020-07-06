<%@page import="test.board.dao.boarddao"%>
<%@page import="java.util.List"%>
<%@page import="test.board.dto.boarddto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//BoardDao 객체를 이용해서 글 목록 얻어오기 
	List<boarddto> list= boarddao.getInstance().getList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/list.jsp</title>
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
	<h1>글 목록 입니다.</h1>
	<table class="table table-sm table-hover">
		<thead class="thead-dark">
			<tr class="d-flex">
				<th class="col-2">글번호</th>
				<th class="col-2">작성자</th>
				<th class="col-6">제목</th>
				<th class="col-2">등록일</th>
			</tr>
		</thead>
		<tbody>
		<%for(boarddto tmp:list){ %>
			<tr class="d-flex">
				<td class="col-2"><%=tmp.getNum() %></td>
				<td class="col-2"><%=tmp.getWriter() %></td>
				<td class="col-6"><a href="detail.jsp?num=<%=tmp.getNum()%>"><%=tmp.getTitle() %></a></td>
				<td class="col-2"><%=tmp.getRegdate() %></td>
			</tr>
		<%} %>
		</tbody>
	</table>
	<a href="insertform.jsp">글 추가하기</a>
</body>
</html>



