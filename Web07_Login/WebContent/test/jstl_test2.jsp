<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	List<String> names = new ArrayList<String>();
	names.add("김구라");
	names.add("해골");
	names.add("원숭이");
	request.setAttribute("list", names);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test/jstl_test2.jsp</title>
</head>
<body>
<%
	//request 영역에 "list"라는 키값으로 담긴 값 얻어오기
	List<String> list = (List<String>)request.getAttribute("list");
%>
<h1>친구 목록 입니다.</h1>
	<%for(String tmp:list){ %>
		<li><%=tmp %></li>
	<%} %>
	
<h1>친구 목록 입니다.(EL+JSTL 활용)</h1>
<ul>
	<c:forEach var="tmp" items="${requestScope.list }" varStatus="status">
		<!--<li data-index="${status.index }">${tmp } <strong>${status.index }</strong></li>-->
		<!--<li data-index="${status.index }">${tmp } <strong>${status.count }</strong></li>-->
		<li>${tmp } <strong>첫번째 : ${status.first }</strong></li>
		<li>${tmp } <strong>첫번째 : ${status.last }</strong></li>
	</c:forEach>
</ul>
<a href="jstl_test3.jsp">다음예제</a>
</body>
</html>