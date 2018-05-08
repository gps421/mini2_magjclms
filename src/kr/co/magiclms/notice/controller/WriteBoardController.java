package kr.co.magiclms.notice.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Notice;
import kr.co.magiclms.mapper.NoticeMapper;

@WebServlet("/noticergst")
public class WriteBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(NoticeMapper.class);
		response.setContentType("application/json;charset=utrf-8");
		String uploadPath = "c:/java-lec/upload";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String datePath = sdf.format(new Date());
		File file = new File(uploadPath + datePath);
		if (!file.exists()) file.mkdirs();
		
		
		// 게시물 등록
		Notice board = new Notice();
		board.setTitle(request.getParameter("title"));
		board.setContent(request.getParameter("content"));
		mapper.insertNotice(board);
		
		
		response.sendRedirect("notice");
	}
}








