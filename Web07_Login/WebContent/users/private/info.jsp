<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	UsersDto dto  = UsersDao.getInstace().getItem(id);
	boolean isSucc = (dto == null) ? false: true;
	//혹시나 getitem에서 셀렉트가 실패되어서 오류가 났을경우 
	String cPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/info</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
	<%if(isSucc){ %>
	<table class="table table-dark">
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이메일</th>
				<th>프로필</th>
				<th>생성일자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=dto.getId() %></td>
				<td><a href="pwd_update_form.jsp">수정하러가기</a></td>
				<td><%=dto.getEmail() %></td>
				<td><%=dto.getProfile() %></td>
				<td><%=dto.getRegdate() %></td>
			</tr>
		</tbody>
	</table>
	<a href="update_form.jsp">개인정보 수정</a><br />
	<a href="javascript:deleteConfirm()">탈퇴</a><br />
	<a href="<%=cPath%>/index.jsp">홈으로가기</a><br />
	<script type="text/javascript">
		function deleteConfirm(){
			const isDelete = confirm("<%=id%> 회원님 탈퇴 하시겠습니까?");
			if(isDelete){
				location.href = "delete.jsp";
			}
		}
	</script>
	<%}else{ %>
	<!-- //알수없는 오류가 발생했습니다. --> 
	<%} %>	
</body>
</html>