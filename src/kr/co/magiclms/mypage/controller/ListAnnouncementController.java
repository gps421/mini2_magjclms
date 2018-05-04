package kr.co.magiclms.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Announcement;
import kr.co.magiclms.mapper.AnnouncementMapper;

@WebServlet("/mypage/annList")
public class ListAnnouncementController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		List<Announcement> annList = mapper.selectAnnouncement(20185555); // (session에서 교수번호 가져오기)
		request.setAttribute("annList", annList);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mypage/annList.jsp");
		rd.forward(request, response);
	}
}
