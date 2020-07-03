<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//1.수정할 회원의 정보를 가져온다.
	//한글깨지지않도록
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	//2.DB에 수정 반영한다.
	MemberDto dto = new MemberDto(num,name,addr);
	dto.setNum(num);
	dto.setName(name);
	dto.setAddr(addr);
	MemberDao dao = MemberDao.getInstance();
	//3.응답한다.
	boolean isSucc = dao.update(dto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%if(isSucc){ %>
		<script>
			alert("<%=dto.getNum()%>번 회원의 정보를 수정했습니다.");
			location.href="list.jsp";
		</script>
	<%}else {%>
		<script>
			alert("<%=dto.getNum()%>번 회원의 수정이 실패했습니다..");
			location.href="update.jsp?num=<%=dto.getNum()%>;
		</script>
	<%} %>
	
</body>
</html>