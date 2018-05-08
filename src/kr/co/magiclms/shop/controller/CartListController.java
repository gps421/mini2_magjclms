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
import kr.co.magiclms.domain.Cart;
import kr.co.magiclms.domain.CartItem;
import kr.co.magiclms.domain.Goods;
import kr.co.magiclms.domain.Login;
import kr.co.magiclms.domain.Member;
import kr.co.magiclms.mapper.CartItemMapper;
import kr.co.magiclms.mapper.CartMapper;
import kr.co.magiclms.mapper.GoodsMapper;

@WebServlet("/shop/cartlist")
public class CartListController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		CartMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartMapper.class);
		CartItemMapper cmapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);
		GoodsMapper gmapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);

		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("user");
		
//		String memberId = "moonmi"; // dell del &  edit here after login 
//		String memberId = ""; // dell check 
		String memberId = login.getMemberID(); // dell dell  
		request.setAttribute("memberId", memberId);
		System.out.println("[CartListController] ** memberID = "+ memberId);
		

//		memberId = request.getParameter("memberId");
//		if(memberId=="") {
//			System.out.println("*cart memberId == Null Null ");	
//		}

		Cart cart = null;
		// to get cartNo by selectCartByName		   
		// To make cart data 
		int cartNo = 0; 	
		// to get cartNo from request
		cartNo = Integer.parseInt(request.getParameter("cartNo")); 
		cart = mapper.selectCartByNo(cartNo);				
		if (cart == null){	
			System.out.println("*There is no cart ** Null ** ");
			return;
			// throw Exception. edit			
		}
		memberId = cart.getMemberId();
		 
		request.setAttribute("cartNo", cartNo);
		request.setAttribute("memberId", memberId);

		System.out.println("[CartListController] cart info, cartNo = "+cart.getCartNo());	
		System.out.println("{CartListController] memberId = "+cart.getMemberId());	
		System.out.println("*cart* cart toString = "+cart.toString());	
		System.out.println("[CartListController] memberId= "+ memberId);
		
		// To get cart data 
		int totalPrice = 0, dicountPrice = 0, lastPrice = 0; 
		int totalShippingCost = 0; 
		List<CartItem> cartItemList = cmapper.selectCartItemByNo(cartNo);
		request.setAttribute("cartItemList", cartItemList);
		for(CartItem el: cartItemList){
			totalPrice += el.getGoodsSum();
			totalShippingCost += el.getShippingCost();
//			System.out.println("*loop** el.getCartItemNo = " + el.getCartItemNo());
		}
		dicountPrice = (int) (totalPrice * 0.05);
		lastPrice = totalPrice - dicountPrice + totalShippingCost;
		System.out.println("*Result loop** totalPrice, totalShippingCost = " 
		+ totalPrice + ", "+ totalShippingCost+ ", dicountPrice = "+ dicountPrice);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("dicountPrice", dicountPrice);
		request.setAttribute("lastPrice", lastPrice);
		request.setAttribute("totalShippingCost", totalShippingCost);

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/cart.jsp");
		rd.forward(request, response);

		System.out.println("** End of CartListController ");

//		List<Goods> list = mapper.selectGoods(); 
//		request.setAttribute("list", list);
//		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/list.jsp");
//		rd.forward(request, response);
//		response.sendRedirect("list");

	}
}
