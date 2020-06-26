package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todo/list")
public class TodoListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<String> list = new ArrayList<String>();
		list.add("html 공부하기");
		list.add("css 공부하기");
		list.add("javascript 공부하기");
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		//요청을 해온 클라이언트에게 출력할 수 있는 개체의 참조값 얻어오기.
	
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset=\"UTF-8\" />");
		pw.println("<title>할일 목록 페이지</title>");
		pw.println("<head>");
		pw.println("<body>");
			
		pw.println("<h1>오늘 할 일</h1>");
		
		pw.println("<ul>");
			for(String data : list) {
				pw.println("<li>"+ data + "</li>");				
			}
		pw.println("</ul>");
		

		pw.println("<body>");
		pw.println("</html>");
		
	}

}
