package kr.co.magiclms.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Announcement;
import kr.co.magiclms.domain.CourseList;
import kr.co.magiclms.domain.Professor;
import kr.co.magiclms.mapper.AnnouncementMapper;

@WebServlet("/mypage/annRegist")
public class WriteAnnouncementController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		Announcement announcement = new Announcement();
		announcement.setTitle(request.getParameter("title"));
		announcement.setContent(request.getParameter("content"));
//		announcement.setProfessorNo(Integer.parseInt(request.getParameter("professorNo"))); // session에서 교수번호 가져오기
		announcement.setProfessorNo(20185555);
//		System.out.println("aadsdsdas" + request.getParameter("professorNo"));
//		announcement.setCourseNo(Integer.parseInt(request.getParameter("courseNo"))); 
		announcement.setCourseNo(1); 
		mapper.insertAnnouncement(announcement);
		
		response.sendRedirect("annList");
	}
}
