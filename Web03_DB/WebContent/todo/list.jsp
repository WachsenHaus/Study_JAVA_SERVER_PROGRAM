<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 할일 !</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<body>
<%
	TodoDao dao = TodoDao.getInstance();
	List<TodoDto> list = dao.getList();
%>
	<div class="header">
		<form id="todoIn"action="${pageContext.request.contextPath}/todo/input.jsp" method="post">
			⭐
			<input type="text" placeholder="오늘의 할일" name="content" id="content"> 
			<button class="button--add" type="submit">등록</button>
		</form>
	</div>
	<div class="dummy"></div>
	<div class="container">
		<form id="todoDel"   action="${pageContext.request.contextPath}/todo/delete.jsp" method="post">
			<input type="hidden" name="selectedValue" id="selectedValue" value=`${selectedValue}`>
			<%for(TodoDto tmp:list){%>
				<ul class="container__ul">
						<li name="num" id="num">
							<%=tmp.getNum() %>
						</li>
						<li>
							<%=tmp.getWork() %>
						</li>
						<li>
							<%=tmp.getRegdate()%>
						</li>
						<a class="button--delete">삭제</a>
				</ul>
			<%} %>
		</form>
	</div>
	
	<script>	
	
	function addevent(){
		document.querySelectorAll(".button--delete").forEach( (item,index)=>{
			item.addEventListener("click",submit);
		});
	}
	addevent();

	var selectedValue;
	function submit(event) {
		console.log(event);
		const btn = event.target;
		const ul = btn.parentNode;
		selectedValue = ul.childNodes[1].innerText;
		console.log("aaa"+selectedValue);
		document.querySelector("#selectedValue").value = selectedValue;
		console.log(selectedValue);
		document.querySelector("#todoDel").submit();
		document.querySelector("#todoDel").addEventListener
	}
	</script>

</body>
</html>