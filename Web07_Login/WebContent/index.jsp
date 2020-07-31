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
		<li><a href="gallery/test.jsp">이미지 업로드 테스트</a></li>
		<li><a href="gallery/test2.jsp">ajax 이미지 업로드 테스트</a></li>
		<li><a href="gallery/list.jsp">이미지 갤러리</a></li>
		<li><a href="test/editor.jsp">Smarteditor 테스트</a></li>
		<li><a href="cafe/list.jsp">카페 글 목록 보기</a></li>
		<li><a href="test/scroll.jsp">스크롤 테스트</a></li>
		<li><a href="test/cookie_form.jsp">쿠키 테스트1</a></li>
		<li><a href="test/cookie_form2.jsp">쿠키 테스트2</a></li>
		<li><a href="test/cookie_form3.jsp">쿠키 테스트3</a></li>
		<li><a href="test/popup.jsp">팝업 test1</a></li>
		<li><a href="test/popup2.jsp">팝업 test2</a></li>
		<li><a href="test/el_test1.jsp">el test1</a></li>
		<li><a href="test/el_test2.jsp">el test2</a></li>
		<li><a href="test/el_test3.jsp">el test3</a></li>
		<li><a href="test/jstl_test.jsp">jstl test1</a></li>
		<li><a href="test/regular_ex.jsp">정규 표현식	</a></li>
		
	</ul>
</div>
</body>
</html>