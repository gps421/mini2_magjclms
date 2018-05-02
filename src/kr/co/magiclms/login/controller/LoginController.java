package kr.co.magiclms.login.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Login;
import kr.co.magiclms.mapper.LoginMapper;

@WebServlet("/jsp/login")
public class LoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/login/loginForm.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(LoginMapper.class);
		
		// 아이디와 패스워드 얻기
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		/*
		 *   - login.xml 생성 
		 *   - LoginMapper 클래스 생성
		 *   - Login
		 *   - SqlMapConfig.xml - Alias 설정 
		 */
		Login login = mapper.selectMemberById(id);
		System.out.println("login : " + login);
		
		if (login == null) {
			request.setAttribute("errMsg", "아이디를 확인하세요");
		}
		// 아이디에 해당하는 사용자 존재
		else if (login.getPass().equals(pass)) {
			System.out.println("로그인 성공");
			// 세션에 사용자 정보 공유하기
			HttpSession session = request.getSession();
			// 접속 시간 추가
			login.setAccessTime(new Date());
			session.setAttribute("user", login);
			
			response.sendRedirect(request.getContextPath() + "/main");
			return;
		}
		else {
			request.setAttribute("errMsg", "패스워드를 확인하세요");
		}
	
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/login/loginForm.jsp"
		);
		rd.forward(request, response);
	}
	
}














