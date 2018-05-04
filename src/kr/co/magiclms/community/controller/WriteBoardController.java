package kr.co.magiclms.community.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.common.file.MlecFileRenamePolicy;
import kr.co.magiclms.domain.Community;
import kr.co.magiclms.mapper.CommunityMapper;

@WebServlet("/communityrgst")
public class WriteBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommunityMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommunityMapper.class);
		response.setContentType("application/json;charset=utrf-8");
		String uploadPath = "c:/java-lec/upload";
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		File file = new File(uploadPath + datePath);
		if (!file.exists()) file.mkdirs();
		
		
		// 게시물 등록
		Community board = new Community();
		board.setTitle(request.getParameter("title"));
		board.setContent(request.getParameter("content"));
		board.setPassword(request.getParameter("pass"));
		mapper.insertCmnt(board);
		
		
		response.sendRedirect("community");
	}
}








