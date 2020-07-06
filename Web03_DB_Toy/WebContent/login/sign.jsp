<%@page import="test.food.dao.fooddao"%>
<%@page import="test.users.dto.usersdto"%>
<%@page import="test.users.dao.usersdao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    	request.setCharacterEncoding("utf-8");
            usersdao dao = usersdao.getInstance();
            String id = request.getParameter("id");
            String pwd = request.getParameter("pwd");
            usersdto dto = new usersdto(id,pwd);

            boolean isSucc = false;
            //성공적으로 생성이되었다면.
            if(dao.insert(dto))
            {
            	System.out.println("계정생성은완료됨");
            	fooddao fDao = fooddao.getInstance();
            	//계정생성이 완료되면 해당 계정의 테이블도 생성함.
            	fDao.setId(id);
            	if(fDao.createSeq()){
            		System.out.println("시퀀스생성은완료됨");
            		//푸드 테이블이 생성되면 그 계정의 시퀀스도 생성해줌.
            		if(fDao.createTable())
            		{
            	fDao.commit();
            	//시퀀스까지 완료되면 플래그를 바꾼다. 
            	isSucc = true;	
            		}
            	}
            	else{
            		System.out.println("왜실패지?");
            	}
            	
            	
            }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(isSucc){ %>
	<script>
		alert("회원가입이 되었습니다.");
		location.href="../index.jsp";
	</script>
<%}else{ %>
	<script>
		alert("회원가입에 실패했습니다..");
		location.href="../index.jsp";
	</script>

<%} %>
</body>
</html>