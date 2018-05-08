package kr.co.magiclms.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.domain.Cart;
import kr.co.magiclms.domain.CartItem;
import kr.co.magiclms.domain.Goods;
import kr.co.magiclms.mapper.CartItemMapper;
import kr.co.magiclms.mapper.CartMapper;
import kr.co.magiclms.mapper.GoodsMapper;

@WebServlet("/shop/orderdetailone")
public class OrderDetailOneController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		CartMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartMapper.class);
		CartItemMapper cmapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);
		GoodsMapper gmapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		
		// location.href='orderdetailone?memberId=${memberId}&no=${goods.goodsNo}&count='+cnt; 
		//String memberId = "Goopsung"; 
		Cart cart = null;
		//cart = mapper.selectCartByName(memberId);	

		// to get memberId, goodsNo, count from request 
		String memberId = request.getParameter("memberId");
		int goodsNo = Integer.parseInt(request.getParameter("goodsNo"));
		int count = Integer.parseInt(request.getParameter("count"));
		
		//request.setAttribute("cartNo", cart.getCartNo());
		request.setAttribute("memberId", memberId);
		request.setAttribute("goodsNo", goodsNo);
		request.setAttribute("count", count);
		
		System.out.println("[OrderDetailOneController] orderDetail one*** memberID = "+memberId+ ", *** goodsNo info = " + goodsNo );
		
	
		//Goods selectGoodsDetailByNo(int no);
		Goods goods = gmapper.selectGoodsDetailByNo(goodsNo);
		
		int totalPrice = 0, dicountPrice = 0, lastPrice = 0; 
		int totalShippingCost = 0; 
		 
		totalPrice = goods.getPrice(); 
		totalShippingCost = goods.getShippingCost() ; 
		dicountPrice = totalPrice - goods.getSalePrice();
		lastPrice = totalPrice - dicountPrice + totalShippingCost;
		
		request.setAttribute("goods", goods);
		request.setAttribute("count", count);
		
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("dicountPrice", dicountPrice);
		request.setAttribute("totalShippingCost", totalShippingCost);	
		request.setAttribute("lastPrice", lastPrice);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/orderOne.jsp");
		rd.forward(request, response);

		System.out.println("** End of drder One [OrderDetailController] servlet *********** ");

//		List<Goods> list = mapper.selectGoods(); 
//		request.setAttribute("list", list);
//		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/list.jsp");
//		rd.forward(request, response);
//		response.sendRedirect("list");

	}
}