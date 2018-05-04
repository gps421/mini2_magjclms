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

@WebServlet("/mypage/assignmentListAjax")
public class ListAssignmentAjaxController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AssignmentMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AssignmentMapper.class);
		List<Assignment> assignmentList = mapper.selectAssignmentList(11111111, 1);
		request.setAttribute("assignmentList", assignmentList);
		
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		
		out.println(new Gson().toJson(assignmentList));
		System.out.println(new Gson().toJson(assignmentList));
	}

}
