<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<h1>회원 가입 폼 입니다.</h1>
		<form action="signup.jsp" method="post" id="myForm">
			<div class="form-group">
				<label for="id">아이디</label>
				<input class="form-control" type="text" name="id" id="id"  />
				<small class="form-text text-muted">영문자 소문자로 시작하고 최소 5글자 ~ 최대 10글자입니다.</small>
				<div class="invalid-feedback">사용할 수 없는 아이디 입니다.</div>
				<button id="checkBtn">중복확인</button>
				<span id="checkResult"></span>
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호</label>
				<input class="form-control" type="text" name="pwd" id="pwd" />
				<small class="form-text text-muted">최소5글자~10글자 이내로 입력하세요.</small>
				<div class="invalid-feedback">비밀번호를 확인 하세요.</div>
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호 확인</label>
				<input class="form-control" type="text" name="pwd2" id="pwd2" />
			</div>
			<div class="form-group">
				<label for="email">이메일</label>
				<input class="form-control" type="text" name="email" id="email" />
				<div class="invalid-feedback">이메일 형식에 맞게 입력해 주세요.</div>
			</div>
			<button class="btn btn-primary" type="submit">가입</button>
			<button class="btn btn-primary" type="reset">취소</button>
		</form>
		<a href="${pageContext.request.contextPath}/test/regular_ex8.jsp">다음 예제</a>
	</div>
</body>

	
	<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
	<script>
	
	//아이디를 검증할 정규 표현식
	var reg_id= /^[a-z].{4,9}/;
	//비밀번호를 검증할 정규 표현식
	var reg_pwd= /^.{5,10}$/;
	// 이메일을 검증할 정규 표현식
	var reg_email= /@/;
	
	//각각의 input 요소의 유효성 여부
	var isIdValid = false;
	var isPwdValid = false;
	var isEmailValid = false;
	//폼 전체의 유효성 여부
	
	var canUseId = false;
	
	$("#myForm").on("submit", function(){
		//
		isFormValid = isIdValid && isPwdValid && isEmailValid;
		
		if(!isFormValid){ //만일 폼이 유효하지 않으면
			return false; //폼 전송 막기
		}
	});
	
	$("#id").on("input",function() {
		//입력한 아이디를 읽어온다.
		var inputId = $("#id").val();
		//아이디 형식에 맞게 입력했는지 여부
		var result = reg_id.test(inputId);
		if(result){ //형식에 맞게 입력 했다면
			$.ajax({
				method: "POST",
				url: "checkid.jsp",
				data:"inputId="+inputId,
				success: function(responesData){
					console.log(responesData);
					if(responesData.isExits){ //이미 존재하는 아이디임으로 사용불가
						isIdValid = false;
						$("#id").addClass("is-invalid");
					}
					else{ //사용 가능
						isIdValid = true;
						$("#id").addClass("is-valid");
					}
				},
			});
		}else{ //형식에 맞게 입력하지 않았다면
			isIdValid = false;
			$("#id").addClass("is-invalid");
		}
	});
	$("#pwd, #pwd2").on("input",function() {
		//입력한 비밀번호를 읽어온다. 
		var inputPwd=$("#pwd").val();
		var inputPwd2=$("#pwd2").val();
		//형식에 맞게 입력했는지 여부
		var result=reg_pwd.test(inputPwd);
		$("#pwd").removeClass("is-valid is-invalid");
		if(result){//형식에 맞게 입력 했다면
			if(inputPwd==inputPwd2){//비밀번호 확인란과 동일하게 입력했다면
				isPwdValid=true;
				$("#pwd").addClass("is-valid");
			}else{//확인란과 다르게 입력했다면
				isPwdValid=false;
				$("#pwd").addClass("is-invalid");
			}
		}else{//형식에 맞게 입력 하지 않았다면
			isPwdValid=false;
			$("#pwd").addClass("is-invalid");
		}
	});
	</script>
</html>