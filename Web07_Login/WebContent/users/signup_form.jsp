<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form</title>
</head>
<body>
	<div class="container">
		<h1>회원 가입 폼 입니다.</h1>
		<form action="signup.jsp" method="post" id="myForm">
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" name="id" id="id"  />
				<button id="checkBtn">중복확인</button>
				<span id="checkResult"></span>
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호</label>
				<input type="text" name="pwd" id="pwd" />
			</div>
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="text" name="email" id="email" />
			</div>
			<button type="submit">가입</button>
			<button type="reset">취소</button>
		</form>
	</div>
</body>

	
	<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
	<script>
	let canUseId = false;
	//중복 확인 버튼을 눌렀을 때 실행할 함수 등록
	$("#checkBtn").on("click",function() {
		var inputId = $("#id").val();
		
		$.ajax({
			method: "POST",
			url: "checkid.jsp",
			data:"inputId="+inputId,
			success: function(responesData){
				console.log(responesData);
				if(responesData.isExits){
					$("#checkResult").text("아이디가 존재합니다.")
					.css("color","red");
					canUseId = false;
					return false;
				}
				canUseId = true;
				$("#checkResult").text("사용가능합니다.")
				.css("color","green");
			},
		});
		return false;
	});	
	
	$("#myForm").on("submit",function(){
		if(!canUseId){
			alert("아이디 중복을 확인하세요");
			return false;
		}
	})
	
	</script>
</html>