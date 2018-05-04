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

@WebServlet("/mypage/annFormAjax")
public class WriteFormAnnouncementAjaxController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("user");
		int profNo = login.getProfessorNo();
		
		List<Announcement> announcement = mapper.selectAnnouncement(profNo);
		out.println(new Gson().toJson(announcement));
		out.close();
	}
}
