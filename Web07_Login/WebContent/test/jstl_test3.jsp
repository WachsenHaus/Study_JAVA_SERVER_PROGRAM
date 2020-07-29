<%@page import="java.util.ArrayList"%>
<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
 <%
 //서블릿에서 데이터를 작업(응답)을 했다고 가정을한다. sample 데이터라고 가정하자.
 List<FileDto> list = new ArrayList<>();
 
 FileDto dto1 = new FileDto();
 dto1.setNum(1);
 dto1.setWriter("김구라");
 dto1.setTitle("제목1");
 
 FileDto dto2 = new FileDto();
 dto2.setNum(2);
 dto2.setWriter("최영훈");
 dto2.setTitle("안녕!");
 
 FileDto dto3 = new FileDto();
 dto3.setNum(3);
 dto3.setWriter("박지예");
 dto3.setTitle("안녕@");
 
 list.add(dto1);
 list.add(dto2);
 list.add(dto3);

 //EL로 추출할 수 있도록 request 영역에 담는다.
 //키값, 제네릭타입 
 //list키값에, list 제네릭타입이 들어감. (오브젝트라서 아무거나 들어감)
 request.setAttribute("list", list);
 
 //DB 컬럼에 저장된 문자열이라고 가정하자.
 String hobby = "piano/game/reading";
 request.setAttribute("hobby", hobby);
 //키값, 스트링값. 문자열로 저장이 된다. 왜냐 ? 오브젝트는 다 들어온다니까
 
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test/jstl_test3.jsp</title>
</head>
<body>
<h1>List에 들어 있는 Dto 활용</h1>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="row" items="${requestScope.list }">
			<tr>
				<!-- <td>${row.getNum() }</td>
				<td>${row.getWriter() }</td>
				<td>${row.getTitle() }</td>
				 -->
				<td>${row.num }</td>
				<td>${row.writer }</td>
				<td>${row.title }</td>
			</tr>
		</c:forEach>
		
		<a href=""></a>
	</tbody>
</table>

<h1>취미입니다.</h1>
<ul>
	<!-- 구분자는 delims이다. -->
	<c:forTokens var="tmp" items="${hobby }" delims="/">
	<li>${tmp }</li>
	
	
	
	
	</c:forTokens>
</ul>
<a href="jstl_test4.jsp">다음예제 가기 </a>


</body>
</html>