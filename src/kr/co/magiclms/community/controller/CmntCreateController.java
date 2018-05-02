package kr.co.magiclms.community.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Community;
import kr.co.magiclms.mapper.CommunityMapper;

@WebServlet("/jsp/communityrgst")
public class CmntCreateController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	CommunityMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommunityMapper.class);
		Community cmnt = new Community();
		cmnt.setTitle(request.getParameter("title"));
		cmnt.setContent(request.getParameter("content"));
		cmnt.setPassword(request.getParameter("pass"));
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("content"));
		System.out.println(request.getParameter("pass"));
		mapper.insertCmnt(cmnt);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/cmnt.jsp");
		rd.forward(request, response);

		
	}
	
}
