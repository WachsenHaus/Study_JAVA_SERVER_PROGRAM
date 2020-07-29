<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("name");
	String name = request.getParameter("phone");
	System.out.println(num+ "|" + name);
%>
{"isSuccess":true} 
