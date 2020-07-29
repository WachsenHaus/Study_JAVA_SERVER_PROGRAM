<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="save.jsp" method="post" id="myForm">
<input type="text" name="name" id="name" placeholder="이름"/>
<input type="text" name="phone" id="phone" placeholder="번호"/>
<button type="submit">전송</button>
</form>

<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>
$("#myForm").on('submit',function() {
	const action = $(this).attr("action"); //action 속성의 value 값
	const method = $(this).attr("method"); //method 속성의 value 값
	const query=$(this).serialize();
	$.ajax({
		method:method, //메소드 : 포스트
		url:action, // url : insert.jsp 폼의 액션 값을보렴.
		data:query, // data:"email=xxx&phone=xxx"
		success:function(data){
			console.log(data);
		}
	});
	return false;
});
	

	
</script>
</body>
</html>