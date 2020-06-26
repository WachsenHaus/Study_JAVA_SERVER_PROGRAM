package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import test.dto.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/list")
public class MemberServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<MemberDto> list = new ArrayList<>();
		list.add(new MemberDto(1,"김구라","노량진"));
		list.add(new MemberDto(2,"해골","행신동"));
		list.add(new MemberDto(3,"원숭이","상도동"));
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		//요청을 해온 클라이언트에게 출력할 수 있는 개체의 참조값 얻어오기.
	
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset=\"UTF-8\" />");
		pw.println("<title>회원 목록 페이지</title>");
		pw.println("<link rel='stylesheet' href='/Web02_Servlet/css/bootstrap.css'/>");
		pw.println("<head>");
		pw.println("<body>");
		
		pw.println("<div class='container'>");
		pw.println("<h1>회원 목록 입니다.</h1>");
		
		pw.println("<table class= 'table table-dark'>");
			pw.println("<tr>");
				pw.println("<th>번호</th>");
				pw.println("<th>이름</th>");
				pw.println("<th>주소</th>");
			pw.println("</tr>");
			for(MemberDto data : list) {
				pw.println("<tr>");
					pw.println("<td>"+ data.getNum() + "</td>");				
					pw.println("<td>"+ data.getName() + "</td>");
					pw.println("<td>"+ data.getAddr() + "</td>");
				pw.println("</tr>");
			}
		pw.println("</table>");
		pw.println("</div>");
		pw.println("<body>");
		pw.println("</html>");
	}
}
