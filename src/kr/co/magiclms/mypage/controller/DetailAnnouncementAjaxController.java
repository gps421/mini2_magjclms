package kr.co.magiclms.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

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

@WebServlet("/mypage/annDetailAjax")
public class DetailAnnouncementAjaxController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("user");
		int profNo = login.getProfessorNo();
		
		Announcement announcement = new Announcement();
		announcement.setProfessorNo(profNo);
		announcement.setAnnNo(Integer.parseInt(request.getParameter("annNo")));
		mapper.updateAnnouncementViewCnt(announcement);
		
		mapper.selectAnnouncementByAnnNo(announcement);
		
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(announcement));
		out.close();
	}
}
