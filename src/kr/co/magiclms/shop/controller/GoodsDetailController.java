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

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Goods;
//import kr.co.magiclms.domain.Goods;
//import kr.co.magiclms.domain.Comment;
import kr.co.magiclms.domain.Member;
import kr.co.magiclms.mapper.GoodsMapper;

@WebServlet("/shop/detail")
public class GoodsDetailController extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member login = (Member)session.getAttribute("user");
		
//		String memberId = "moonmi"; // dell del 
		String memberId = "goops"; // dell del 
//		String memberId = ""; // dell del and edit here after login 
//		memberId = request.getParameter("memberId"); 

		request.setAttribute("memberId", memberId);
//		if(login == null){
//			response.sendRedirect(request.getContextPath()+"/login/login");
//			return;
//		}
		
		GoodsMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);

		int no = Integer.parseInt(request.getParameter("no"));
//		mapper.updateGoodsViewCnt(no);
		Goods goods = mapper.selectGoodsDetailByNo(no);
		request.setAttribute("goods", goods);
		System.out.println("******* Goods info = "+goods);
		
//		List<Comment> commentList = mapper.selectCommentByNo(no);
//		request.setAttribute("commentList", commentList);
//		try{ request.setAttribute(
//					"commentNo", Integer.parseInt(request.getParameter("commentNo")));	
//		} catch (NumberFormatException e) { }

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/detail.jsp");
		rd.forward(request, response);

	}
	
}