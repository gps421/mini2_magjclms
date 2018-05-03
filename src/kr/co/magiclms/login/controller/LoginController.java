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
import kr.co.magiclms.domain.Join;
import kr.co.magiclms.mapper.JoinMapper;

@WebServlet("/jsp/login")
public class LoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/main/main.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JoinMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(JoinMapper.class);
		
		// 아이디와 패스워드 얻기
		String id = request.getParameter("userId");
		String pass = request.getParameter("pw");
		System.out.println(id);
		/*
		 *   - login.xml 생성 
		 *   - LoginMapper 클래스 생성
		 *   - Login
		 *   - SqlMapConfig.xml - Alias 설정 
		 */
		Join join = mapper.selectMemberById(id);
		System.out.println("join : " + join);
		
		if (join == null) {
			request.setAttribute("errMsg", "아이디를 확인하세요");
			//System.out.println(login);
		}
		// 아이디에 해당하는 사용자 존재
		else if (join.getPw().equals(pass)) {
			System.out.println("로그인 성공");
			// 세션에 사용자 정보 공유하기
			HttpSession session = request.getSession();
			// 접속 시간 추가
//			join.setAccessTime(new Date());
			session.setAttribute("user", join);
			System.out.println(join.getMemberId());
			
			
			response.sendRedirect(request.getContextPath() + "/main");
			return;
		}
		else {
			request.setAttribute("errMsg", "패스워드를 확인하세요");
		}
	
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/main/main.jsp"
		);
		rd.forward(request, response);
	}
	
}














