package kr.co.magiclms.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Content;
import kr.co.magiclms.mapper.ContentMapper;

@WebServlet("/mypage/contentListAjax")
public class ContentListAjaxController extends HttpServlet{
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContentMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ContentMapper.class);
//		List<Content> contentList = mapper.selectCsontent(1); 
//		request.setAttribute("contentList", contentList);
//		
//		response.setContentType("application/json; charset=utf-8"); 
//		PrintWriter out = response.getWriter();
//		
//		out.println(new Gson().toJson(contentList));
//		System.out.println(new Gson().toJson(contentList));
	}
}
