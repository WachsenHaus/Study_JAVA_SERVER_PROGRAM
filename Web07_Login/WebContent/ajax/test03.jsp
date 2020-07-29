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

<form id="myForm" action="insert.jsp" method="post">
	<input type="text" class="email" name="email" placeholder="이메일 입력..." />
	<input type="text" class="phone" name="phone" placeholder="전화번호 입력..." />
	<button id="formBtn" type="submit">전송</button>
</form>

<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>

document.getElementById("myForm").addEventListener("submit",function(e){
	e.preventDefault();
	const formData = new FormData(this);
	const searchParams = new URLSearchParams();
	//requset로 읽고싶다면 URLSearchParams로 전송해야함. 와 진짜 지린다.
	//그러면 network 항목에서 x-www-form-urlencoded 타입으로 전송됨.미친 강좌 최고
	for(const pair of formData)
		{
		//pair0은 키값
		//pari1은 값
		searchParams.append(pair[0],pair[1]);
		}
	
	fetch('insert.jsp',{
		method: 'POST',
		body:searchParams
	}).then(function (response){
		return response.text();
	}).then(function (text){
		console.log(text);
	}).catch(function(error){
		console.error(error);
	});
});

/*
$("#myForm").on("submit",function () {
		var action = $(this).attr("action"); //action 속성의 value 값
		var method = $(this).attr("method"); //method 속성의 value 값
		//email = xxx&phone = xxx 형식의 문자열이 읽어와진다.
		var query=$(this).serialize(); // 폼에 입력한값을 query string으로 읽어오기.
		
		$.ajax({
			method:method, //메소드 : 포스트
			url:action, // url : insert.jsp 폼의 액션 값을보렴.
			data:query, // data:"email=xxx&phone=xxx"
			success:function(data){
				console.log(data);
			}
		});
		return false; //폼전송을  강제로 막아버리기. 
	});
	*/
</script>

</body>
</html>