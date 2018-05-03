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

@WebServlet("/jsp/updateForm")
public class UpdateFormBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CommunityMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommunityMapper.class);
		Community board = mapper.selectCmntByNo(Integer.parseInt(request.getParameter("communityNo")));
		System.out.println(board.getCommunityNo());
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/cmntUpdateForm.jsp");
		rd.forward(request, response);
	}
}
