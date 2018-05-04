package kr.co.magiclms.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Community;
import kr.co.magiclms.mapper.CommunityMapper;

@WebServlet("/jsp/comtUpdateS")
public class UpdateBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommunityMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommunityMapper.class);

		Community board = new Community();
		board.setCommunityNo(Integer.parseInt(request.getParameter("commentNo")));
		board.setTitle(request.getParameter("title"));
		board.setContent(request.getParameter("content"));
		mapper.updateCnmnt(board);
		
		response.sendRedirect("community");
	}
}
