package kr.co.magiclms.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Announcement;
import kr.co.magiclms.mapper.AnnouncementMapper;

@WebServlet("/mypage/annDetail")
public class DetailAnnouncementController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		int annNo = Integer.parseInt(request.getParameter("annNo"));
		mapper.updateAnnouncementViewCnt(annNo);
		
		Announcement announcement = mapper.selectAnnouncementByAnnNo(annNo);
		request.setAttribute("announcement", announcement);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mypage/annDetail.jsp");
		rd.forward(request, response);
	}
}
