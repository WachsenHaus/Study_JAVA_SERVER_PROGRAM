<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/ajax/test03.jsp</title>
</head>
<body>
<h1>form에 입력한 내용을 ajax요청으로 전송하는 예제</h1>

<form action="insert.jsp" method="post">
	<input type="text" name="email" placeholder="이메일 입력..." />
	<input type="text" name="phone" placeholder="전화번호 입력..." />
	<button type="submit">전송</button>
</form>

<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>

	${"#myForm"}.on("submit",function () {
		var action = $(this).attr("action"); //action 속성의 value 값
		var method = $(this).attr("method"); //method 속성의 value 값
		//email = xxx&phone = xxx 형식의 문자열이 읽어와진다.
		var query=$(this).serialize(); // 폼에 입력한값을 query string으로 읽어오기.
		
		$.ajax({
			method:method, //메소드 : 포스트
			url:action, // url : insert.jsp
			data:query, // data:"email=xxx&phone=xxx"
			success:function(data){
				console.log(data);
			}
		});
		return false; //폼전송을  강제로 막아버리기. 
	});
</script>

</body>
</html>