package test.servlet;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/todo")
public class TodoServlet extends HttpServlet{
	
	protected void service(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp) throws javax.servlet.ServletException ,java.io.IOException 
	{
		//1. 할일 목록을 얻어오는 비즈니스 로직을 수행한다.
		List<String> todoList = new ArrayList<>();
		todoList.add("html 공부하기");
		todoList.add("css 공부하기");
		todoList.add("javascript 공부하기");
		//2. 비즈니스 수행결과 데이터(모델)을 request 영역에 담기
		req.setAttribute("todoList", todoList);
		//todoList는 키값에 배열을 담았다.
		//3. view 페이지로 forward 이동해서 응답하기
		RequestDispatcher rd =
				req.getRequestDispatcher("/WEB-INF/views/todo/list.jsp");
		rd.forward(req,resp);
	};
}
