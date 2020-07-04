<%@page import="test.food.dto.FoodDto"%>
<%@page import="test.food.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String addr = request.getParameter("addr");
String menu = request.getParameter("menu");
String price = request.getParameter("price");
String grade = request.getParameter("grade");
String content = request.getParameter("content");

boolean isSucc = false;

FoodDto dto = new FoodDto();
dto.setName(name);
dto.setAddr(addr);
dto.setMenu(menu);
dto.setPrice(Double.parseDouble(price));
dto.setGrade(Double.parseDouble(grade));
dto.setContent(content);

FoodDao dao = FoodDao.getInstance();
if(dao.insert(dto))
{
	isSucc = true;	
	response.sendRedirect("food.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>