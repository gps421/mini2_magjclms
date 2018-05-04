package kr.co.magiclms.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Announcement;
import kr.co.magiclms.domain.Login;
import kr.co.magiclms.mapper.AnnouncementMapper;

@WebServlet("/mypage/annRegistAjax")
public class WriteAnnouncementAjaxController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8"); 
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("user");
		int profNo = Integer.parseInt(request.getParameter("profNo"));
		System.out.println("ddddd" + request.getParameter("profNo"));
		
		Announcement announcement = new Announcement();
		announcement.setTitle(request.getParameter("title"));
		announcement.setContent(request.getParameter("content"));
		announcement.setCourseNo(Integer.parseInt(request.getParameter("courseNo")));
		announcement.setProfessorNo(profNo);
		
		System.out.println(announcement);
		
		mapper.insertAnnouncement(announcement);
		
		List<Announcement> annList = mapper.selectAnnouncement(profNo); // (session에서 교수번호 가져오기)
		System.out.println(annList);
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(annList));
		out.close();
	}
}
