package kr.co.magiclms.community.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.mapper.CommunityMapper;

@WebServlet("/jsp/commentList")
public class CommentListController extends HttpServlet {
	
	@Override
	public void service(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CommunityMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommunityMapper.class);
		
		int no = Integer.parseInt(request.getParameter("communityNo"));
		System.out.println("기영아" + no);
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		
		out.println(new Gson().toJson(mapper.selectCommentByNo(no)));
	}
}











