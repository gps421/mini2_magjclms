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

@WebServlet("/shop/orderwriteone")
public class OrderWriteOneController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		CartMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartMapper.class);
		CartItemMapper cmapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);
		GoodsMapper gmapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		OrderMapper omapper = MyAppSqlConfig.getSqlSession().getMapper(OrderMapper.class);
		OrderItemMapper oimapper = MyAppSqlConfig.getSqlSession().getMapper(OrderItemMapper.class);
		
		// location.href='cartwriteone?memberId=${memberId}&goodsNo=${goods.goodsNo}&paymentId='+paymentId ;
		String memberId = ""; 
		int goodsNo = 1; //dell
		String paymentId = "1"; //dell
		int count = 1, cartNo = 1; //dell
		
		// to get cartNo, You can use also MemberId
		memberId = request.getParameter("memberId");
		goodsNo = Integer.parseInt(request.getParameter("goodsNo"));
		count = Integer.parseInt(request.getParameter("count"));
		paymentId = request.getParameter("paymentId");
		System.out.println("**order 111111 write** goodsNo = "+goodsNo);

		Order order = null;
		order = omapper.selectOrderByName(memberId); 
		// orderId is needed 
		System.out.println("** 222 order ?info = "+order);
		
//		Cart cart = mapper.selectCartByNo(cartNo);
//		memberId = cart.getMemberId();

		request.setAttribute("memberId", memberId);
		
		
		if (order == null){	
			System.out.println("** Error 주문 전 order 정보가 없습니다. memberId= "+ memberId);

			order = new Order();
			//cart.setCartNo(request.getParameter("writer"));
			order.setMemberId(memberId);
			order.setDeliveryAddr("서울시 강남구 삼성동 10");   
			order.setShippingCost(2000);   
			
			System.out.println("**order 1111 ** 3456 memberId="+ memberId +",id "+order.getMemberId());
			omapper.insertOrder(order);
		}
		
		// to get orderId 
		order = omapper.selectOrderByName(memberId); 
		int orderId = order.getOrderId();
		request.setAttribute("orderId", order.getOrderId());
		
		System.out.println("**order 1111 ** 222222 orderId= "+ orderId);		
		
		Goods goods = gmapper.selectGoodsDetailByNo(goodsNo);
		
			OrderItem oi = new OrderItem();
			
			oi.setOrderId(order.getOrderId());
			oi.setGoodsNo(goods.getGoodsNo());
			oi.setGoodsName(goods.getName());
			oi.setGoodsCount(count);
			oi.setGoodsSum(goods.getPrice() * count);
			oi.setOrderState("배송완료");
			oi.setShippingCost(goods.getShippingCost()); 
			switch (paymentId) {
			case "1":
				paymentId = "현금결제"; 
				break;
			case "2":
				paymentId = "신용카드"; 
				break;
			case "3":
				paymentId = "간편결제"; 
				break;
			case "4":
				paymentId = "휴대폰결제"; 
				break;
			default:
				paymentId = "현금결제"; 
				break;
			}
			oi.setOrderPayment(paymentId);

			oimapper.insertOrderItem(oi);		
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