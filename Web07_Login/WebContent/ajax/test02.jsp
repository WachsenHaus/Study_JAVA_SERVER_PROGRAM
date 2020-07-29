<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="msg" placeholder="서버에 할말 입력" />
<button id="sendBtn">전송</button>
	<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
	<script>
	/*
		전송 버튼을 눌렀을 때 입력한 문자열을 읽어와서 
		/ajax/send.jsp 페이지에 post 방식으로 전송해 보세요.
		입력한 문자열을 msg라는 파라미터명으로 전송하기
		send.jsp 페이지에서는 전송된 내용을 서버측 콘솔에 출력해보세요.
		send.jsp 페이지에서 응답은 json 형식 {"isSuccess" : true}를 응답해 보세요.
		클라이언트에서는 서버가 응답한 데이터를 클라이언트측 콘솔에 출력해 보세요.
	*/
	
	/*
	document.querySelector("#sendBtn").addEventListener("click",function () {
		  let msg2 = document.querySelector("#msg").value;
		  const data = {message: msg2};
		  console.log(data);
		  fetch("send.jsp", {
		    method: "POST",
		    //body:JSON.stringify({msg:msg}),
		    //body: { message: msg2 },
		    //body: JSON.stringify("msg="+msg);
		    //body: "message="+msg,
		    body: JSON.stringify(data),
		  //body: JSON.stringify("message="+msg2),
		  })
		    .then(function (res) {
		      return res.json();
		    })
		    .then(function (res) {
		      return console.log(res);
		    });
		});
		*/

	$("#sendBtn").on("click",function() {
		let msg2 = $("#msg").val();
		//console.log({message:msg2});
		//메세지라는 키값으로 msg2값을 보낸다.
		$.ajax({
			method: "post",
			url:"send.jsp",
			data: {message:msg2}, //오브젝트 방식으로 보낸다.
			//data: "msg="+msg, //스트링이다.
			//success하고나서 send.jsp가 동작하네 왜그러지
			success:function(res){
				console.log('success먼저?');
				console.log(res);
			}
		});	
	});
	
	</script>
</body>
</html>