package test.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//컨테스트 경로를 제외한 순수 요청 경로가 있어야 한다.
@WebServlet("/fortune")
public class fortuneServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 오늘의 운세를 얻어오는 비즈니스 로직을 수행한다.
		String fortuneToday = "동쪽으로 가면 귀인을 만나요";
	
		//비즈니스 로직의 수행결과 data를 HttpServletRequest 개체에 담는다.
		// (request 영역에 담는다 (scope) 라고도 한다.)
		//키,밸류이다. 키는 스트링, 밸류는 오브젝트이다. 오브젝트라는 소리는 뭐든 저장이 가능하다.
		// "fortuneToday"라는 키값으로 String type의 참조값 담기
		
		req.setAttribute("fortuneToday", fortuneToday);
		//req영역에 담았다.!
		
		
		
		//jsp 페이지로 응답을 위임한다. ( forward 이동 )
		RequestDispatcher rd = req.getRequestDispatcher("/test/fortune.jsp");
		rd.forward(req, resp);
		//디스패쳐야. 포워드해, 전달받은 get 요청 전달자로 전진해! 
		
		//최초 요청은 서블릿이 받고, 응답은 다른jsp에 위임을 한다. -> 응답자체는 다른 jsp페이지에서 한다.
		// 요청자(클라이언트)는 최초요청한 경로만 있고, 응답하는 데이터는 다른곳(다른 jsp 예를들어 /test/fortune)에서 대답한다.
		//서블릿에서 마크업을 응답하기 힘들다.
		//이렇게하면 뒤에 jsp가 안붙은 주소를 표시할수있네?
	}

}
