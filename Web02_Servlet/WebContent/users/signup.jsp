<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//전송되는 문장려에 한글이 있다면 깨지지 않도록
	request.setCharacterEncoding("utf-8");
	//input type = "text" name="id'에 입력한 문자열
	String id = request.getParameter("id");
	//input type = "password" name = "pwd" 에 입력한 문자열
	String pwd = request.getParameter("pwd");
	//input type = "radio" name="gender"에 선택한 value 문자열
	String gender=request.getParameter("gender");
	//select name ="job"에 선택된 option의 value
	//select된게 없으면 빈문자열 ""이 리턴된다.
	String job=request.getParameter("job"); // doctor or programmer or etc
	//input type = "checkbox" name="like"에 체크된 value목록
	String[] likes = {};
	try{
		likes = request.getParameterValues("like");	
	}catch(Exception e)
	{
		
	}
	
	//textarea name="comment"에 입력한 문자열
	String comment = request.getParameter("comment");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>id = <%=id %></p>
<p>pwd = <%=pwd %></p>
<p>gender = <%=gender %></p>
<p>job = <%=job %></p>
<ul>
	<%for(String tmp:likes){ %>
		<li><%=tmp %></li>
	<%} %>
</ul>
<p 하고 싶은 말 : <%=comment %>></p>
</body>
</html>