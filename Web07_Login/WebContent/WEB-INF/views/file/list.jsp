<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<thead>
		<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>파일명</th>
				<th>파일크기</th>
				<th>등록일</th>
				<th>삭제</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="tmp" items="${requestScope.list }">
		<tr>
			<td>${tmp.num }</td>
			<td>${tmp.writer }</td>
			<td>${tmp.title }</td>
			<td><a href="download.jsp?num=${tmp.num }">${tmp.orgFileName }</a></td>
			<td><fmt:formatNumber value="${tmp.fileSize }" pattern="#,###"/> byte</td>
			<td>${tmp.regdate }</td>
			<td>
				<c:if test="${tmp.writer eq id }">
					<a href="private/delete.jsp?num=${tmp.num }">삭제</a>
				</c:if>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>