package kr.co.magiclms.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Notice;
import kr.co.magiclms.mapper.NoticeMapper;

@WebServlet("/notice")
public class ListBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		NoticeMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(NoticeMapper.class);
		List<Notice> list = mapper.selectNotice();
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/notice/notice.jsp");
		rd.forward(request, response);
	}
}
