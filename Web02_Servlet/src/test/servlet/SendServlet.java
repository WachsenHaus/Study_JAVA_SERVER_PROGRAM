package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/send")
public class SendServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String getMsg = req.getParameter("msg");
		
	
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		//요청을 해온 클라이언트에게 출력할 수 있는 개체의 참조값 얻어오기.
	
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset=\"UTF-8\" />");
		pw.println("<title>index.html</title>");
		pw.println("<head>");
		pw.println("<body>");
		pw.println("<h1>" + getMsg + "</h1>");
		pw.println("<body>");
		pw.println("</html>");
		
	}
}
