package kr.co.magiclms.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.mapper.CommunityMapper;

@WebServlet("/jsp/delete")
public class DeleteBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommunityMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommunityMapper.class);
		mapper.deleteCmnt(Integer.parseInt(request.getParameter("communityNo")));
		
		response.sendRedirect("community");
	}
}
