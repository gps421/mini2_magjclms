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
import kr.co.magiclms.domain.QnA;
import kr.co.magiclms.mapper.QnAMapper;

@WebServlet("/mypage/qnaListAjax")
public class QnAListAjaxController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnAMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(QnAMapper.class);
		List<QnA> qnaList = mapper.selectQnAList(11111111, 1);
		request.setAttribute("qnaList", qnaList);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println(new Gson().toJson(qnaList));
		System.out.println(new Gson().toJson(qnaList));
	}
}
