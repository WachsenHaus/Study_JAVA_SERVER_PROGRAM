<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("id");
boolean isLogged = (id == null) ? false:true;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>인덱스 페이지 입니다</h1>
	<ul>
		<!-- url 요청 경로에는 소문자와 언더바를 사용해서 사용한다. -->
		<li><a href="users/signup_form.jsp">회원가입</a></li>
		<%if(isLogged){ %>
			<p>
				<a href="users/private/info.jsp"><%=id%></a>님 로그인중..
				<li><a href="users/logout.jsp">로그아웃</a></li>
			</p>		
		<%}else{ %>
			<li><a href="users/login_form.jsp">로그인</a></li>
		<%} %>
		<li><a href="test/buy.jsp?code=111">111번 상품 구입 테스트</a></li>
		<li><a href="ajax/test01.jsp">ajax테스트</a></li>
		<li><a href="ajax/test02.jsp">ajax테스트2</a></li>
		<li><a href="ajax/test03.jsp">ajax테스트3</a></li>
		<li><a href="file/list.jsp">자료실 목록 보기</a></li>
	</ul>
</div>
</body>
</html>