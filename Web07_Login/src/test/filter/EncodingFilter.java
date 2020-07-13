package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/*
 * [ 요청을 가로채서 중간에 원하는 작업을 할 수 있는 필터 만들기 ]
 * 
 * 1.javax.servlet.Filter 인터페이스를 구현한다.
 * 2.Web.xml 문서에 필터를 정의하고 맵핑한다.
 * 3.doFilter() 메소드 안에서 원하는 작업을 한다. 
 */
public class EncodingFilter implements Filter {
	//인코딩 정보를 저장할 필드 선언
	private String encoding;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		//인코딩 설정하기
		if(request.getCharacterEncoding() == null)
		{
			request.setCharacterEncoding(encoding);
		}
		
		//요청의 흐름 계속 이어가기
		chain.doFilter(request, response);
		//리다이렉트도 가능하다
		// 예를들어 구매하기를 눌렀는데 로그인이 안되어있으면 로그인창으로 보내버린다.
		
		//2.요청의 흐름 계속 이어가기
		//chain.doFilter(request, response);
	}

	
	//필터가 최초 사용될때  1번 호출되는 메소드
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		//web.xml문서에 있는 내용을 읽어서 필드에 저장한다.
		encoding = filterConfig.getInitParameter("encoding");
		
	}

}
