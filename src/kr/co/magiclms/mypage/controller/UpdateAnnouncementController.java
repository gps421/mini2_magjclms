package kr.co.magiclms.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Announcement;
import kr.co.magiclms.mapper.AnnouncementMapper;

@WebServlet("/mypage/annUpdate")
public class UpdateAnnouncementController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		
		Announcement announcement = new Announcement();
		announcement.setAnnNo(Integer.parseInt(request.getParameter("annNo")));
		announcement.setTitle(request.getParameter("title"));
		announcement.setContent(request.getParameter("content"));
//		announcement.setProfessorNo(Integer.parseInt(request.getParameter("professorNo")));
		mapper.updateAnnouncement(announcement);
		
		response.sendRedirect("annList");
	}
}
