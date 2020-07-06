<%@page import="test.food.dto.fooddto"%>
<%@page import="test.food.dao.fooddao"%>
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

fooddto dto = new fooddto();
dto.setName(name);
dto.setAddr(addr);
dto.setMenu(menu);
dto.setPrice(Double.parseDouble(price));
dto.setGrade(Double.parseDouble(grade));
dto.setContent(content);

fooddao dao = fooddao.getInstance();
if(dao.insert(dto))
{
	isSucc = true;	
	response.sendRedirect("food.jsp");
}
%>
