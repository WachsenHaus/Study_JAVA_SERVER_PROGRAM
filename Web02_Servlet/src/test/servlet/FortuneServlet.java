package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.swing.internal.plaf.basic.resources.basic;

import java.util.Date;
import java.util.Random;

/*
 * "/hello" 요청에 대해서 응답할 무언가(Servlet)를 만들 클래스 설계하기.
 * 1. httpServlet 클래스를 상속받는다.
 * 2. service() 메소드를 오버라이드 한다.
 * 3. service() 메소드에 전달되는 HttpServletResponse 개체를 활용해서
 * 	응답하는 코드를 작성한다.
 * 4. "/hello" 요청이 왔을 때 실제 동작하도록 맵핑한다.
 */

@WebServlet("/sub/fortune")
public class FortuneServlet extends HttpServlet {
	

	String[] mFortuneAnalects = {
			"돈이 들어온답니다.",  
			"누군가 당신을 응원합니다..",  
			"모든일이 잘되는 오늘!.", 
			"좋은 연이 닿는답니다."
			};
	Random r = new Random();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		
		int getLucckyNum = r.nextInt(mFortuneAnalects.length);
		
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
		String analects = mFortuneAnalects[getLucckyNum];
		pw.println("<p> 오늘의 운세 ?  : " + analects + "</p>");
		pw.println("<body>");
		pw.println("</html>");
		
	}
}