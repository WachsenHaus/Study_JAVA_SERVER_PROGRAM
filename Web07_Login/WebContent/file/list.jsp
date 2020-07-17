<%@page import="test.file.dao.FileDao"%>
<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파일 목록
	List<FileDto> list = FileDao.getInstance().getList();
	//로그인된 아이디 읽어오기
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file/list</title>
</head>
<body>
	<div class="container">
		<h1>파일 목록 입니다.</h1>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>파일명</th>
					<th>파일크기</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
			<%for(FileDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getWriter() %></td>
					<td><%=tmp.getTitle() %></td>
					<td><a href="download.jsp?num=<%=tmp.getNum()%>"><%=tmp.getOrgFileName() %></a></td>
					<td><%=tmp.getFileSize() %></td>
					<td><%=tmp.getRegdate() %></td>
					<td>
						<%if(tmp.getWriter().equals(id)){ %>
							<a href="private/delete.jsp?num=<%=tmp.getNum()%>">삭제</a>
						<%} %>
					</td>
					<td>
						<img src="/Web07_Login/upload/<%=tmp.getSaveFileName()%>" alt="" />
					</td>
				</tr>
			<%} %>	
			</tbody>
		</table>
		<a href="private/upload_form.jsp">파일 업로드</a>
	</div>
</body>
</html>