package kr.co.magiclms.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.mapper.Mapper;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Goods;
import kr.co.magiclms.domain.Login;
import kr.co.magiclms.domain.Member;
import kr.co.magiclms.mapper.GoodsMapper;

@WebServlet("/shop/list")
public class GoodsMainListViewController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		GoodsMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		System.out.println("[GoodsMainListViewController] ********** 11");

		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("user");
		
		String memberId = login.getMemberID(); // dell dell  
		request.setAttribute("memberId", memberId);
		System.out.println(" 111 ***** memberID = "+ memberId);
		// get memberId and setAttr memberId 
		// get memberId from session info
		// String memberId = "goops"; // dell dell  

		
		String category = request.getParameter("name"); 
		request.setAttribute("category", category);

		List<Goods> list ;
		if(category == null){
			list = mapper.selectGoods(); 		
		}
		else {
			list = mapper.selectGoodsByCategory(category); 				
		}
			
		request.setAttribute("list", list);
		System.out.println("test******* list = "+list);

		RequestDispatcher rd;
		if(category == null){
			rd = request.getRequestDispatcher("/jsp/shop/listboard.jsp");
		}
		else {
			rd = request.getRequestDispatcher("/jsp/shop/list.jsp");
		}
		rd.forward(request, response);
		
	}

}
