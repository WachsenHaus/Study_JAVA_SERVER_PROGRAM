<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
MemberDto dto = (MemberDto)request.getAttribute("dto");
List<MemberDto> list = new ArrayList<>();
list.add(dto);

int num = dto.getNum();
String name = dto.getName();
String addr = dto.getAddr();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/member</title>
</head>
<body>

<table>
<thead>
	<th>번호</th>
	<th>이름</th>
	<th>주소</th>
</thead>
<tbody>
<%for(MemberDto tmp : list){ %>
	<tr>
		<td><%=num %></td>
		<td><%=name %></td>
		<td><%=addr %></td>
	</tr>
<%} %>

</tbody>

</table>

<h3></h3>
<h1></h1>
<h2></h2>
</body>
</html>