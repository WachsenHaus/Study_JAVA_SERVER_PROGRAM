<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /include/navbar.jsp--%>
<%
	String thisPage= request.getParameter("thisPage");
%>
<div class="navbar navbar-expand-sm bg-info navbar-dark">
	navbar입니다. <strong><%=thisPage %></strong>에 포함되었음
</div>