<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/regular_ex.jsp</title>
</head>
<body>
	<h1>Regular Expression 테스트</h1>
	<input type="text" id="id" placeholder="아이디 입력..." />
	<button id="checkBtn">가입</button>
	<p>영문자 소문자로 시작하고 5~10글자 이내, 특수 문자를 하나 이상 입력 하세요</p>
	<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js" > </script>
	<script>
		//영문자 소문자로 시작하는지 여부를 알아 낼 수 있는 정규 표현식
		var reg1=/^[a-z]/;     //;
		var reg2=/^.{5,10}$/;
		//대부분의 정규표현식은 시작과 끝을 정해주어야 한다.
		var re3 = /[^a-zA-Z0-9]/;
		//특수문자가 들어있는지 검증하는 방법 영문자대소,숫자가 안들어있다면~
		
		
		//버튼을 클릭했을때 실행할 함수 등록
		$("#checkBtn").on("click",function(){
			//1. 입력한 문자열을 읽어와서 
			var str=$("#id").val();
			//2. 검증한다.
			var result = reg1.test(str);
			if(result){
				alert("영문자 소문자로 시작 했군요!");
			}
			var result2 = reg2.test(str);
			if(result2){
				alert("최소 5글자 ~ 최대10글자 이군요!");
			}
		});
	</script>
	
</body>
</html>