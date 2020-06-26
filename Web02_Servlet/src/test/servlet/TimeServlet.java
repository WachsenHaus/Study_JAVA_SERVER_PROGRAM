package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/*
 * "/hello" 요청에 대해서 응답할 무언가(Servlet)를 만들 클래스 설계하기.
 * 1. httpServlet 클래스를 상속받는다.
 * 2. service() 메소드를 오버라이드 한다.
 * 3. service() 메소드에 전달되는 HttpServletResponse 개체를 활용해서
 * 	응답하는 코드를 작성한다.
 * 4. "/hello" 요청이 왔을 때 실제 동작하도록 맵핑한다.
 */

@WebServlet("/time")
public class TimeServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//응답 인코딩 설정
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
		//Date 개체를 이용해서 현재 날자 시간을 문자열로 얻어내기
		Date d = new Date();

		
		String now = d.toString();
		pw.println("<p> 현재 시간 : " + now + "</p>");
		pw.println("<img src='images/kim1.png'/>");

		pw.println("<body>");
		pw.println("</html>");
		
	}
}