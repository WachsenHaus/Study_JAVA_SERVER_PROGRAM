package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/member/*")
public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		
		
		//httpsession 개체의 참조값을 얻어낸다.
		HttpSession session =  req.getSession();
		//로그인된 아이디가 있는지 얻어와본다.
		String id = (String)session.getAttribute("id");
		if(id!= null) { //로그인되었다.
			chain.doFilter(request, response);
		}else { //로그인되지않았다.
			HttpServletResponse res= (HttpServletResponse)response;
			String cPath = req.getContextPath();
			res.sendRedirect(cPath+"/test/loginform.jsp");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
