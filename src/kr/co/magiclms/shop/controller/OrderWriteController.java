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
import kr.co.magiclms.domain.Order;
import kr.co.magiclms.domain.OrderItem;
import kr.co.magiclms.mapper.CartItemMapper;
import kr.co.magiclms.mapper.CartMapper;
import kr.co.magiclms.mapper.GoodsMapper;
import kr.co.magiclms.mapper.OrderItemMapper;
import kr.co.magiclms.mapper.OrderMapper;

@WebServlet("/shop/orderwrite")
public class OrderWriteController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		CartMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartMapper.class);
		CartItemMapper cmapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);
		GoodsMapper gmapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		OrderMapper omapper = MyAppSqlConfig.getSqlSession().getMapper(OrderMapper.class);
		OrderItemMapper oimapper = MyAppSqlConfig.getSqlSession().getMapper(OrderItemMapper.class);
		
		int cartNo = 1; //dell
		// to get cartNo, You can use also MemberId
		cartNo = Integer.parseInt(request.getParameter("cartNo"));
		System.out.println("**order write** cartNo = "+cartNo);
		
		String memberId = ""; 
		Cart cart = mapper.selectCartByNo(cartNo);
        memberId = cart.getMemberId();
		request.setAttribute("memberId", memberId);
        
		Order order = null;
		order = omapper.selectOrderByName(memberId); 
		// orderId is needed 
		System.out.println("**order** ????? cart info = "+order);
		
		if (order == null){	
			System.out.println("** Error 주문 전 order 정보가 없습니다. memberId= "+ memberId);

			order = new Order();
			//cart.setCartNo(request.getParameter("writer"));
			order.setMemberId(memberId);
			order.setDeliveryAddr("서울시 강남구 삼성동 10");   
			order.setShippingCost(1000);   
			
			System.out.println("**order** 3456 memberId="+ memberId +",id "+order.getMemberId());
			omapper.insertOrder(order);
		}
		
		// to get orderId 
		order = omapper.selectOrderByName(memberId); 
		int orderId = order.getOrderId();
		request.setAttribute("orderId", order.getOrderId());
		
		System.out.println("**order** 222222 memberId= "+ memberId);		

		// To make cart data 
		System.out.println("*order write*** cartNo = "+cartNo+ ", *** cartNo = " + cartNo);

		int totalPrice = 0, dicountPrice = 0, lastPrice = 0; 
		int totalShippingCost = 0; 
		List<CartItem> cartItemList = cmapper.selectCartItemByNo(cartNo);
		
		request.setAttribute("cartItemList", cartItemList);
		
		System.out.println("*orderDetail*** cartItemList= "+cartItemList+ ", *** cartItemList size= " + cartItemList.size());
		
		for(CartItem el: cartItemList){
			OrderItem oi = new OrderItem();
			
			oi.setOrderId(order.getOrderId());
			oi.setGoodsNo(el.getGoodsNo());
			oi.setGoodsName(el.getGoodsName());
			oi.setGoodsCount(el.getGoodsCount());
			oi.setGoodsSum(el.getGoodsSum());
			oi.setOrderState("배송완료");
			oi.setOrderPayment("cash");
		
			oimapper.insertOrderItem(oi);
			
			totalPrice += el.getGoodsSum();
			totalShippingCost += el.getShippingCost();
			System.out.println("*loop*orderItem write*** el.getCartItemNo = " + el.getCartItemNo());
		}
		
		dicountPrice = (int) (totalPrice * 0.05);
		lastPrice = totalPrice - dicountPrice + totalShippingCost;
		System.out.println("*Result loop** totalPrice, totalShippingCost = " 
		+ totalPrice + ", "+ totalShippingCost+ ", dicountPrice = "+ dicountPrice);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("dicountPrice", dicountPrice);
		request.setAttribute("lastPrice", lastPrice);
		request.setAttribute("totalShippingCost", totalShippingCost);

		// to set content of Order Table, OrderItemTable
		
		// delete cart Items of cartNo
		cmapper.deleteCartItemByCartNo(cartNo);  
		System.out.println("**BBBBB End of Cart Item delete ****** ");
		
		//RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/order.jsp");
		//rd.forward(request, response);
		String dest = "orderlist?orderId="+orderId;
		response.sendRedirect(dest);


	}
}