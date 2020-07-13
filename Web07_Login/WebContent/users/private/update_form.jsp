<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/update_form</title>
</head>
<body>
	<div class="container">
		<form action="update.jsp" method=post>
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="text" name="email" id="email" />
			</div>
			<div class="form-group">
				<label for="profile">프로파일</label>
				<input type="file" name="profile" id="profile" disabled />
			</div>
			<button type="submit">수정하기</button>
		</form>
	</div>
</body>
</html>