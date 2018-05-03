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
import kr.co.magiclms.domain.Assignment;
import kr.co.magiclms.mapper.AssignmentMapper;

@WebServlet("/mypage/asgmtList")
public class ListAssignmentController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
//		AssignmentMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AssignmentMapper.class);
//		List<Assignment> asgmtList = mapper.selectAssignmentList();

//		
//		request.setAttribute("asgmtList", asgmtList);
//		
//		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mypage/asgmtList.jsp");
//		rd.forward(request, response);
		
		
		response.setContentType("application/json; charset=utf-8");
		
		// 요청한 user에게 게시물 목록 보내기(json 형태 문자열로 만들어서 : javascript에서 쓸 수 있도록)
		AssignmentMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AssignmentMapper.class);
		List<Assignment> asgmtList = mapper.selectAssignmentList(11111111,1);
		Gson gson = new Gson();
		
		PrintWriter out = response.getWriter();
		out.println(gson.toJson(asgmtList)); // list의 내용을 json 형태 문자열로 바꿔서 보내기
		out.close();
		
	}
}
