package kr.co.magiclms.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.mapper.Mapper;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Goods;
import kr.co.magiclms.mapper.GoodsMapper;

@WebServlet("/shop/list")
public class GoodsMainListViewController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		GoodsMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		System.out.println("test 2222 ********** 11");
		
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
		
		/*
		Board board = new Board();
		board.setNo(Integer.parseInt(request.getParameter("no")));
		// board.setWriter(request.getParameter("writer"));
		board.setTitle(request.getParameter("title"));
		board.setContent(request.getParameter("content"));
		mapper.updateBoard(board);
		
		response.sendRedirect("list"); 
		*/
		
		
	}
	
	public void service1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		List<Goods> list = mapper.selectGoods();
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/list.jsp");
		rd.forward(request, response);
	}
}
