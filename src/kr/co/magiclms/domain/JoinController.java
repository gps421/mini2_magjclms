package kr.co.magiclms.domain;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.mapper.JoinMapper;

@WebServlet("/html/jj")
public class JoinController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JoinMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(JoinMapper.class);
		
		Join join = new Join();
		join.setMemberId(request.getParameter("member1Id"));
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
		System.out.println(request.getParameter("domitory"));
		response.sendRedirect("sub.html");
	}
}
