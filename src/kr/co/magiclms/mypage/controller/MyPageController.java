package kr.co.magiclms.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.mapper.MemberMapper;

@WebServlet("/mypage")
public class MyPageController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mypage/mypage.jsp");
		rd.forward(request, response);
	}
}
