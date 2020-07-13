<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/pwd_update_form</title>
</head>
<body>
	<div class="container">
		<h1>비밀번호 수정 폼</h1>
		<form action="pwd_update.jsp" method="post" id="myForm">
			<div class="form-group">
				<label for="pwd">기존 비밀번호</label>
				<input type="text" name="pwd" id="pwd" />
			</div>
			<div class="form-group">
				<label for="newPwd">새 비밀번호</label>
				<input type="password" name="newPwd" id="newPwd" />
			</div>
			<div class="form-group">
				<label for="newPwd2">새 비밀번호 확인</label>
				<input type="password" name="newPwd2" id="newPwd2" />
			</div>
			<a href="javascript:pwdConfirm()">수정하기</a>
		</form>
	</div>
	<script>
		function pwdConfirm()
		{
			const newPwd = document.getElementById("newPwd");
			const newPwd2 = document.getElementById("newPwd2");
			const myForm = document.getElementById("myForm");
			
			if(newPwd.value == newPwd2.value)
			{
				alert("수정하러간다~");
				myForm.submit();
				return;
			}
			alert("비밀번호가 일치하지않아요");
			newPwd.value = "";
			newPwd2.value ="";
			newPwd.focus();
		}
	</script>
</body>
</html>