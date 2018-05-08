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
import kr.co.magiclms.domain.Login;
import kr.co.magiclms.domain.Order;
import kr.co.magiclms.domain.OrderItem;
import kr.co.magiclms.mapper.CartItemMapper;
import kr.co.magiclms.mapper.CartMapper;
import kr.co.magiclms.mapper.GoodsMapper;
import kr.co.magiclms.mapper.OrderItemMapper;
import kr.co.magiclms.mapper.OrderMapper;


@WebServlet("/shop/orderlist2")
public class OrderList2Controller extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{	
		request.setCharacterEncoding("utf-8");
		CartMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartMapper.class);
		CartItemMapper cmapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);
		GoodsMapper gmapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		OrderMapper omapper = MyAppSqlConfig.getSqlSession().getMapper(OrderMapper.class);
		OrderItemMapper oimapper = MyAppSqlConfig.getSqlSession().getMapper(OrderItemMapper.class);
		
		int orderId = 1; //dell
		// to get orderId, You can use also MemberId
		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("user");
		
		String memberId = login.getMemberID(); // dell dell  
		request.setAttribute("memberId", memberId);
		System.out.println("[OrderList2Controller] ** memberID = "+ memberId);
		
		// old code, delete 
		memberId = request.getParameter("memberId");
		request.setAttribute("memberId", memberId);
		
		// to get orderId 
		Order order = omapper.selectOrderByName(memberId);
		if(order == null){
			System.out.println("**order is null ** ?????");
			response.sendRedirect("cartlist");
			return;
		}
		orderId = order.getOrderId();
		request.setAttribute("orderId", order.getOrderId());

		System.out.println("[OrderList2Controller] ** orderId = "+orderId);	
			
		int totalPrice = 0, dicountPrice = 0, lastPrice = 0; 
		int totalShippingCost = 0; 
		// to get content of Order Table, OrderItemTable
		List<OrderItem> orderItemList = oimapper.selectOrderItemByNo(orderId);
		
		request.setAttribute("orderItemList", orderItemList);
		
		System.out.println("*OrderList2Controller* orderItemList= "+orderItemList+ ", *** orderItemList size= " + orderItemList.size());
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/orderlist.jsp");
		rd.forward(request, response);
//		response.sendRedirect("orderlist?'orderId'=orderId&'memberId'=memberId");
		System.out.println("** End of OrderList2Controller, After order ");

//		response.sendRedirect("list");
	}

}
