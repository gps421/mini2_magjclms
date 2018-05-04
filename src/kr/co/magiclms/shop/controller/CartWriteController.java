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
import kr.co.magiclms.mapper.CartMapper;
import kr.co.magiclms.domain.CartItem;
import kr.co.magiclms.mapper.CartItemMapper;
import kr.co.magiclms.domain.Goods;
import kr.co.magiclms.mapper.GoodsMapper;

@WebServlet("/shop/cartwrite")
public class CartWriteController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		CartMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartMapper.class);
		CartItemMapper cmapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);
		GoodsMapper gmapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		
		String memberId = "moonmio"; // edit here after login 
		Cart cart = null;
		cart = mapper.selectCartByName(memberId);	
		// to get cartNo by selectCartByName		   
		// To make cart data 
		int cartNo = 0; 	
		if (cart == null){	
			System.out.println("*cart writer** Null Null ");	
			cart = new Cart();
			//cart.setCartNo(1); // del
			//cart.setCartNo(request.getParameter("writer"));
			cart.setMemberId(memberId);
			
			mapper.insertCart(cart); 
		}
		
		// to get cartNo by selectCartByName
		cartNo = cart.getCartNo();
		request.setAttribute("cartNo", cart.getCartNo());
		System.out.println("*cart writer** cart info, cartNo = "+cart.getCartNo());	
		System.out.println("*cart writer** cart info, memberId = "+cart.getMemberId());	
		System.out.println("*cart writer** cart toString = "+cart.toString());	
		System.out.println("******* 222222 memberId= "+ memberId);
		
		// To get goods data 
		int goodsNo ;
		goodsNo = Integer.parseInt(request.getParameter("no"));
		Goods goods = gmapper.selectGoodsDetailByNo(goodsNo);
		
		System.out.println("**selectGoodsDetailByNo*** goodsNO = "+goodsNo+ ", *** Goods info = " + goods);


		CartItem item = new CartItem(); 
		//item.setCartNo(goods.getGoodsNo());
		item.setCartNo(cartNo);  
		item.setGoodsNo(goods.getGoodsNo());
		item.setGoodsName(goods.getName());
		item.setGoodsCount(Integer.parseInt(request.getParameter("count")));
		item.setGoodsSum( goods.getPrice() * Integer.parseInt(request.getParameter("count")) );
		item.setShippingCost(goods.getShippingCost());

		cmapper.insertCartItem(item);
		System.out.println("** after insert cartItem = " + item);
			
		int totalPrice = 0, dicountPrice = 0, lastPrice = 0; 
		int totalShippingCost = 0; 
		List<CartItem> cartItemList = cmapper.selectCartItemByNo(cartNo);
		request.setAttribute("cartItemList", cartItemList);
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

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/cart.jsp");
		rd.forward(request, response);

		System.out.println("** End of CartItem Insert ");

//		List<Goods> list = mapper.selectGoods(); 
//		request.setAttribute("list", list);
//		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/list.jsp");
//		rd.forward(request, response);
//		response.sendRedirect("list");

	}
}

