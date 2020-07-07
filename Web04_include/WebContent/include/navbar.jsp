<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /include/navbar.jsp--%>
<%
	String thisPage= request.getParameter("thisPage");
%>
<div>
	navbar입니다. <strong><%=thisPage %></strong>에 포함되었음
</div>