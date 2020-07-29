<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//httpServletRequest 개체를 이용해서 요청과 함께 전달된 쿠키 읽어내기
	Cookie[] cooks = request.getCookies();
	//"saveMsg" 라는 키값으로 저장된 문자열을 저장할 변수
	String saveMsg = null;
	if(cooks != null){
		//반복문 돌면서 쿠키 개체를 하나씩 참조
		for(Cookie tmp:cooks){
			//쿠키의 키값
			String key = tmp.getName();
			if(key.equals("saveMsg")){ //만일 우리가 찾는 키 값이라면
				//해당 키값으로 저장된 value를 읽어낸다.
				//saveMsg=tmp.getValue();
				saveMsg=URLDecoder.decode(tmp.getValue(),"utf-8");
			
			}
		}
	}
		
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>saveMsg라는 키값으로 저장된 문자열 : <%=saveMsg %></p>
	<a href=""></a>
</body>
</html>