<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<%
	//textarea에 입력한 정보를 읽어온다. 개행기호(\n) 포함되어있을 수 있다.
	String content = request.getParameter("content");
	//sample 데이터를 request영역에 담아준다. 
	request.setAttribute("content", content);
	//페이지 영역에 newLine이라는 키값으로 담는다. 
	pageContext.setAttribute("newLine", "\n");
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/jstl_test6.jsp</title>
</head>
<body>
<h1> jstl 함수 사용해 보기</h1>
	<p>${fn:replace(content,newLine,'<br/>') }</p>
	

</body>
</html>