package kr.co.magiclms.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Announcement;
import kr.co.magiclms.mapper.AnnouncementMapper;

@WebServlet("/mypage/annDetailAjax")
public class DetailAnnouncementAjaxController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		int annNo = Integer.parseInt(request.getParameter("annNo"));
		mapper.updateAnnouncementViewCnt(annNo);
		
		Announcement announcement = mapper.selectAnnouncementByAnnNo(annNo);
		
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(announcement));
		
		out.close();
	}
}
