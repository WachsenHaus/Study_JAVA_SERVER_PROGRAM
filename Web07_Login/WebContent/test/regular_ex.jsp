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
	<a href="regular_ex2.jsp">다음예제</a>
	<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
	<script>
		//특수문자가 들어있는지 검증하는 방법 영문자대소,숫자가 안들어있다면~
		
		
		//버튼을 클릭했을때 실행할 함수 등록
		$("#checkBtn").on("click",function(){
			//1. 입력한 문자열을 읽어와서 
			var str=$("#id").val();
			//2. 검증한다.

			//영문자 소문자로 시작하는지 여부를 알아 낼 수 있는 정규 표현식
			var reg1=/^[a-z]/;     //;
			var result = reg1.test(str);
			if(result){
				alert("영문자 소문자로 시작 했군요!");
			}

			var reg2=/^.{5,10}$/;
			var result2 = reg2.test(str);
			if(result2){
				alert("최소 5글자 ~ 최대10글자 이군요!");
			}
			
			//특수 문자가 포함되어 있는지를 검증한다.
			//대부분의 정규표현식은 시작과 끝을 정해주어야 한다.
			var reg3 = /[^a-zA-Z0-9]/;
			var result3 = reg3.test(str);
			if(result3){
				alert("특수문자가 포함 되어 있군요!");
			}
			
			//영문자 소문자 시작 + 최소 5글자 
			var reg4 = /^[a-z].{4,9}$/;
			
			if(reg4.test(str) == false){
				alert("영문자 소문자로 시작을 하고 최소 5글자~최대 10글자 이내로 작성해 주세요 !");
			}
		});
	</script>
	
</body>
</html>