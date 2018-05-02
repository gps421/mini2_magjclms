package kr.co.magiclms.common.file;

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

@WebServlet("/mypage/annUpdateForm")
public class UpdateFormAnnouncementController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnnouncementMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AnnouncementMapper.class);
		Announcement announcement = mapper.selectAnnouncementByAnnNo(Integer.parseInt(request.getParameter("annNo")));
		request.setAttribute("announcement", announcement);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mypage/annUpdateForm.jsp");
		rd.forward(request, response);
	}
}
