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

@WebServlet("/users/login")
public class UserLoginServlet extends HttpServlet{
	String id = "gura";
	String password = "1234";

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Boolean isSucc = false;
		req.setCharacterEncoding("utf-8");
		String getId = req.getParameter("id"); //name의 정보를 가져온다. "id"
		System.out.println(getId + id);
		String getPassword = req.getParameter("pwd"); //name의 정보를 가져온다. name = "pwd"
		System.out.println(getPassword + password);
		
		if(getId.equals(id) && getPassword.equals(password)) {
			isSucc = true;
			System.out.println("오케이같음");
		}
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		//요청을 해온 클라이언트에게 출력할 수 있는 개체의 참조값 얻어오기.
		PrintWriter pw = resp.getWriter();
		pw.println("<script>");
		if(isSucc)
		{
			pw.println("alert('" + getId + "님이 로그인되었습니다.')");
		}
		else {
			pw.println("alert('로그인실패')");
		}
		pw.println("location.replace(\"/Web02_Servlet/index.html\")");
		pw.println("</script>");
	}

}
