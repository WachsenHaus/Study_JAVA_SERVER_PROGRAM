<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%
	//test를 위해 sample data를 request 영역에 담기
	request.setAttribute("size", 123456789);
	request.setAttribute("price", 250000);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>숫자 포맷을 도와주는 fmt 사용하기</h1>

<p>
	파일의 크기는 <fmt:formatNumber value="123456789" pattern="#,###"/>byte입니다.
</p>

<p>
	파일의 크기는 <fmt:formatNumber value="${size }" pattern="#,###"/>byte입니다.
</p>

<p>
	가격은 <fmt:formatNumber value="123456789" type="currency"/> price입니다.
</p>

<p>
	가격은 <fmt:formatNumber value="${price }" type="currency"/>price입니다.
</p>

<p>
	가격은 <fmt:formatNumber value="${price }" type="currency" currencySymbol="$"/>price입니다.
</p>

<form action="jstl_test6.jsp" method="post">
	<textarea name="content" id="" cols="30" rows="10"></textarea>
	<button type="submit">
	제출하기
	</button>
</form>


</body>
</html>