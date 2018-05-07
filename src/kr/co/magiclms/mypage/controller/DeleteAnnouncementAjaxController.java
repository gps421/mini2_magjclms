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

@WebServlet("/mypage/annDeleteAjax")
public class DeleteAnnouncementAjaxController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
//		HttpSession session = request.getSession();
//		Login login = (Login)session.getAttribute("user");
//		int profNo = login.getProfessorNo();
		
		Announcement announcement = new Announcement();
//		announcement.setProfessorNo(profNo);
		announcement.setProfessorNo(20185000);
		announcement.setAnnNo(Integer.parseInt(request.getParameter("annNo")));
		mapper.updateAnnouncementViewCnt(announcement);
		
		mapper.deleteAnnouncement(announcement);
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(announcement));
		out.close();
		
//		List<Announcement> annList = mapper.selectAnnouncement(profNo); // (session에서 교수번호 가져오기)
//		List<Announcement> annList = mapper.selectAnnouncement(20185000); // (session에서 교수번호 가져오기)
//		response.setContentType("application/json; charset=utf-8"); 
//		PrintWriter out = response.getWriter();
//		out.println(new Gson().toJson(announcement));
	}
}
