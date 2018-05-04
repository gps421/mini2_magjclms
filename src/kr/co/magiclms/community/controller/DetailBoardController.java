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

@WebServlet("/jsp/cmntDetail")
public class DetailBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		CommunityMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommunityMapper.class);
		
		int no = Integer.parseInt(request.getParameter("communityNo"));
		mapper.updateCmntViewCnt(no);
		
		Community board = mapper.selectCmntByNo(no);
//		System.out.println("뷰카운트" + board.getViewCnt());
		
		request.setAttribute("detail", board);
		
		// 댓글 목록에서 수정 링크 클릭 시에만 값이 넘어온다.
		request.setAttribute("commentNo", request.getParameter("commentNo"));	
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/cmntDetail.jsp");
		rd.forward(request, response);
	}
}





