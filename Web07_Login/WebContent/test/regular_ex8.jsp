<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/regular_ex6.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<style>

</style>
</head>
<body>
	<script>
		var reg1 = /[0-9]/;
		var reg12 = /[\d]/; // reg1와 reg12는 동일하다. digit임.
		
		var reg2=/[^0-9]/;
		var reg22 = /[\D]/; //reg2와 reg22는 동일하다. 
		
		//아래의 두 정규 표현식은 같다
		var reg3=/[a-zA-Z0-9]/;
		var reg32 = /[\w]/;
		
		var reg4=/^a-zA-Z0-9/;
		var reg42=/\W/;
		
		//공백(띄어쓰기, tab, 개행기호) 를 찾는 정규 표현식
		var reg5=/[\s]/;
		//공백(띄어쓰기, tab, 개행기호)이 아닌 문자를 찾는 정규 표현식.
		var reg6=/[\S]/;
		
		//new 를 이용한 정규 표현식 개체 생성
		var reg7=/^[a-z].{4,9$}/;
		var reg72 = new RegExp('^[a-z].{4,9}$');
		
		var reg8=/abc/g;
		var reg82 = new RegExp("abc","g");
		
		//영문 소문자.
		var reg9 = /[\w]+/;
		var reg92 = new RegExp("^[\\w]+$");
		var reg10 = new RegExp("^[\\w]?$");
		var reg11 = new RegExp("^[\\w]{1}$");
		//문자열에서 특별한의미를 갖지마세요 하려면 \\ 두개를 붙여야한다. \"  = " 한개를 뜻함.
		
		
		
	</script>


</body>
</html>






