package kr.co.magiclms.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.magiclms.domain.Login;

public class AuthFilter implements Filter {
	
	// 로그인 없이 호출할 수 있는 페이지의 목록
	private List<String> list; 
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		list = new ArrayList<>();
		String pages = filterConfig.getInitParameter("pages");
		String[] arr = pages.split(";");
		for (String page : arr) {
//			System.out.println("page : " + page.trim());
			list.add(page.trim());
		}
	}

	@Override
	public void doFilter(
			ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest hRequest = (HttpServletRequest)request;
		HttpServletResponse hResponse = (HttpServletResponse)response;
		
		// 사용자가 요청한 페이지 정보
		String uri = hRequest.getRequestURI();
//		System.out.println("uri : " + uri);
		
		// 프로젝트 경로를 구한 다음 사용자 요청 URI에서 제거한다.
		String contextPath = hRequest.getContextPath();
		/*
		/00_board/board/list
		/00_board
		*/
		uri = uri.substring(contextPath.length());
//		System.out.println("변경 후 uri : " + uri);
		
		// 사용자가 요청한 페이지가 로그인 없이 들어갈 수 있는 페이지 인지 반환.
		// 반환된 값이 -1 이 라면 반드시 로그인이 되어야만 들어갈 수 있는 페이지
		int index = list.indexOf(uri);
		// 로그인이 되어 있지 않은 경우 로그인 폼으로 이동시킨다.
		if (index == -1) {
			HttpSession session = hRequest.getSession();
			Login login = (Login)session.getAttribute("user");
			if (login == null) {
				hResponse.sendRedirect(hRequest.getContextPath() + "/login/login");
				return;
			}
		}
		
		chain.doFilter(request, response);
	}
		
}








