package kr.co.magiclms.notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Notice;
import kr.co.magiclms.mapper.NoticeMapper;

@WebServlet("/noticeDetail")
public class DetailBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		NoticeMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(NoticeMapper.class);
		
		int no = Integer.parseInt(request.getParameter("no"));
		Notice board = mapper.selectNoticeByNo(no);
//		System.out.println("뷰카운트" + board.getViewCnt());
		
		request.setAttribute("detail", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/notice/noticeDetail.jsp");
		rd.forward(request, response);
	
	}
}





