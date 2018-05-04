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

@WebServlet("/shop/orderdetail")
public class OrderDetailController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		CartMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartMapper.class);
		CartItemMapper cmapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);
		GoodsMapper gmapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		
		//String memberId = "Goopsung"; 
		Cart cart = null;
		//cart = mapper.selectCartByName(memberId);	

		// To make cart data 
		int cartNo = 1; //dell

		if(""== request.getParameter("cartNo")){
			System.out.println("**no cartNo ****** "); // add treat ******					
		}
		// to get cartNo, You can use also MemberId
		cartNo = Integer.parseInt(request.getParameter("cartNo"));
		System.out.println("*orderDetail*** cartNo = "+cartNo+ ", *** cartNo info = " + cartNo);
		
		//request.setAttribute("cartNo", cart.getCartNo());
		request.setAttribute("cartNo", cartNo);
		System.out.println("*order detail** cart info, cartNo = "+cartNo);	
		
		int totalPrice = 0, dicountPrice = 0, lastPrice = 0; 
		int totalShippingCost = 0; 
		List<CartItem> cartItemList = cmapper.selectCartItemByNo(cartNo);
		
		request.setAttribute("cartItemList", cartItemList);
		
		System.out.println("*orderDetail*** cartItemList= "+cartItemList+ ", *** cartItemList size= " + cartItemList.size());
		
		for(CartItem el: cartItemList){
			totalPrice += el.getGoodsSum();
			totalShippingCost += el.getShippingCost();
			System.out.println("*loop** el.getCartItemNo = " + el.getCartItemNo());
		}
		dicountPrice = (int) (totalPrice * 0.05);
		lastPrice = totalPrice - dicountPrice + totalShippingCost;
		System.out.println("*Result loop** totalPrice, totalShippingCost = " 
		+ totalPrice + ", "+ totalShippingCost+ ", dicountPrice = "+ dicountPrice);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("dicountPrice", dicountPrice);
		
		request.setAttribute("lastPrice", lastPrice);
		request.setAttribute("totalShippingCost", totalShippingCost);

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/order.jsp");
		rd.forward(request, response);

		System.out.println("** End of drderDetail servlet *********** ");

//		List<Goods> list = mapper.selectGoods(); 
//		request.setAttribute("list", list);
//		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/list.jsp");
//		rd.forward(request, response);
//		response.sendRedirect("list");

	}
}