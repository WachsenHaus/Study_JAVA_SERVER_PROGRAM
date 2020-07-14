<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/ajax/test01.jsp</title>
</head>
<body>
	<button id="getBtn">요청하기</button>
	<button id="getBtn2">요청하기2</button>
	<button id="getBtn3">요청하기3</button>
	<button id="getBtn9">요청하기9</button>
	<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
	<script>
		// id가 getBtn 인 곳에 "click" 이벤트가 일어났을 때 호출되는 함수 등록
		$("#getBtn").on("click",function() {
			//jquery의 기능일 이용해서 ajax 요청하기
			$.ajax({
				method:"GET", //get,post방식을정한다.
				url:"${pageContext.request.contextPath}/ajax/getmsg.jsp", //jsp나 서블릿 경로를 정한다.
				//url에 xml,json,html
				data:"num=1&name=kimgura", //요청 파라미터.
				success:function(responseData){
					console.log(responseData)
				}, 
			});
		});
		$("#getBtn2").on("click",function() {
			//jquery의 기능일 이용해서 ajax 요청하기
			$.ajax({
				method:"GET", //get,post방식을정한다.
				url:"${pageContext.request.contextPath}/ajax/getmsg.jsp", //jsp나 서블릿 경로를 정한다.
				//url에 xml,json,html
				data:{num:2,name:"해골"}, //요청 파라미터.
				success:function(data){
					//data는 json 형식을 가지고있는 string type이다.
					console.log(data)
					//javascript에서 사용하려면 object로 바꿔서 사용해야 한다.
					var obj = JSON.parse(data);
					console.log(obj.msg);
				}, 
			});
		});
		$("#getBtn3").on("click",function() {
			//jquery의 기능일 이용해서 ajax 요청하기
			$.ajax({
				method:"GET", //get,post방식을정한다.
				url:"getgreet.jsp", //jsp나 서블릿 경로를 정한다.
				success:function(data){
			/*
			getgreet.jsp 페이지에서 contentType을 application/json
			이라고 정확히 명시 해기 때문에 jquery가 응답된 문자열을 object로 바꿔서 전달을 해준다.
			*/
					console.log(data)
					alert(data.greet);
				}, 
			});
		});
		document.querySelector("#getBtn9").addEventListener("click",() => {
			fetch("getmsg.jsp", {
				method: "GET",
			}).then(function(response) {
				console.log(JSON.stringify(response));
			    return response.json();
			  })
			  .then(function(myJson) {
				  console.log(myJson);
			    console.log(myJson.msg);
			  });
		});
		
		
	</script>
	
	
	
</body>
</html>