<%@page import="test.food.dao.FoodDao"%> <%@page import="test.food.dto.FoodDto"%> <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<% request.setCharacterEncoding("utf-8"); 
String num = request.getParameter("num"); 
String name = request.getParameter("name"); 
String addr = request.getParameter("addr"); 
String menu = request.getParameter("menu"); 
String price = request.getParameter("price");
String grade =request.getParameter("grade"); 
String content = request.getParameter("content"); 
boolean isSucc = false; 
FoodDto dto = new FoodDto();
dto.setNum(Integer.parseInt(num)); 
dto.setName(name); 
dto.setAddr(addr);
dto.setMenu(menu);
dto.setPrice(Double.parseDouble(price));
dto.setGrade(Double.parseDouble(grade)); 
dto.setContent(content);
FoodDao dao = FoodDao.getInstance();
if(dao.update(dto)) { 
	isSucc = true;
} 
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <%if(isSucc){ %>
    <script>
      if (confirm("수정 하시겠습니까 ? ")) {
        location.replace("food.jsp");
      }
    </script>
    <%} %>
  </body>
</html>
