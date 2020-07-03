<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

int num = Integer.parseInt(request.getParameter("num"));
MemberDao dao = MemberDao.getInstance();

//String cPath = request.getContextPath();
//response.sendRedirect(cPath + "/member/list.jsp");
MemberDto dto = dao.select(num);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<div class="container">
		<h1>회원정보 수정 폼입니다.</h1>
		<form action="update.jsp" method="post">
			<%-- jsp페이지의 주석 --%>
			<%--폼을 제출했을때 회원의 번호가 전송되도록 input type="hidden"에 회원 번호를 출력해 놓는다. --%>
			<input type="hidden" name="num" value="<%=dto.getNum()%>" />
			<label for="num">번호</label>
			<!-- disabled 속성이 추가된 input 요소는 수정이 불가하고 form을 제출했을 때 전송도 되지않는다. -->
			<input type="text" id="num" value="<%=dto.getNum()%>" disabled/><br />
			<label for="num">이름</label>
			<input type="text" id="name" name="name" value="<%=dto.getName()%>"/><br />
			<label for="addr">주소</label>
			<input type="text" name="addr" id="addr" value="<%=dto.getAddr()%>"/><br />
			<button type="submit">수정</button>
			<button type="reset">취소</button>
		</form>
	</div>

</body>
</html>