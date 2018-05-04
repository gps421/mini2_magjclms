package kr.co.magiclms.join.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Join;
import kr.co.magiclms.mapper.JoinMapper;

@WebServlet("/jsp/istjoin")
public class JoinController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=utf-8");
		String id = request.getParameter("memberId");
		
		JoinMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(JoinMapper.class);
		
		int cnt = mapper.selectIdChk(id);
		PrintWriter out = response.getWriter();
		out.write("{\"result\": " + cnt + "}");
		out.close();
		
		
		Join join = new Join();
		join.setMemberId(request.getParameter("memberId"));
		join.setUserName(request.getParameter("userName"));
		join.setBirthDate(Integer.parseInt(request.getParameter("birthDate")));
		join.setPw(request.getParameter("pass"));
		join.setPwHint(request.getParameter("passHint"));
		join.setEmail(request.getParameter("email"));
		join.setPhoneNo(Integer.parseInt(request.getParameter("phone")));
		join.setAddr(request.getParameter("addr"));
		join.setPostCode(Integer.parseInt(request.getParameter("postCode")));
		join.setDomitory(request.getParameter("domitory"));
		join.setGrade(Integer.parseInt(request.getParameter("grade")));
		join.setMemberType(request.getParameter("memberType"));
		mapper.memberJoin(join);
		response.sendRedirect("main");
		
	}
}
