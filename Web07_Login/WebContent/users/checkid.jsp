<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//ajax 전송 파라미터를 읽어온다. ( data: "checkid=+checkId")
	String inputId = request.getParameter("inputId");
System.out.println(inputId);
	//usersdao를 이용해서 해당 아이디가 존재 하는지 여부를 리턴받는다.
	UsersDao dao =  UsersDao.getInstace();
	boolean isExits =  dao.isExist(inputId);
	System.out.println(isExits);
%>
{"isExits" : <%=isExits%>}