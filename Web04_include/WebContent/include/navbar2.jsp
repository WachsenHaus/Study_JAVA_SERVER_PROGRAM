<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /include/navbar2.jsp--%>
<%
	String thisPage= request.getParameter("thisPage");
%>
<div class="navbar navbar-expand-sm bg-info navbar-dark">
	<ul class="navbar-nav">
		<li  class="nav-item <%if(thisPage.equals("home")){%>active<%}%>" >
			<a id="navHome" class="nav-link" href="${pageContext.request.contextPath}/test6/home.jsp">
				Home
			</a>
		</li>
		<li  class="nav-item <%if(thisPage.equals("game")){%>active<%}%>">
			<a id="navGame" class="nav-link" href="${pageContext.request.contextPath}/test6/game.jsp">
				Game
			</a>
		</li>
		<li class="nav-item <%if(thisPage.equals("study")){%>active<%}%>">
			<a id="navStudy" class="nav-link" href="${pageContext.request.contextPath}/test6/study.jsp">
				Study
			</a>
		</li>
	</ul>
</div>

<script>
console.log("네비바!!!");
function init()
{
	document.querySelector("#navStudy").addEventListener("click", () => console.log("스터디!"));
}
init();
</script>