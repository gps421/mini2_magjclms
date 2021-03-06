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


@WebServlet("/shop/orderlist")
public class OrderListController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		CartMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartMapper.class);
		CartItemMapper cmapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);
		GoodsMapper gmapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
		OrderMapper omapper = MyAppSqlConfig.getSqlSession().getMapper(OrderMapper.class);
		OrderItemMapper oimapper = MyAppSqlConfig.getSqlSession().getMapper(OrderItemMapper.class);
		
		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("user");
		
		String memberId = login.getMemberID(); // dell dell  
		request.setAttribute("memberId", memberId);
		System.out.println("[OrderListController]** memberID = "+ memberId);
		
		int orderId = 1; //dell
		// to get orderId, You can use also MemberId
		orderId = Integer.parseInt(request.getParameter("orderId"));
		System.out.println("[OrderListController]** orderId = "+orderId);
		
		Order order = omapper.selectOrderByNo(orderId);
        memberId = order.getMemberId();
		request.setAttribute("memberId", memberId);
		System.out.println("[OrderListController]** memberId= "+ memberId);		
        
		if(order == null){
			System.out.println("**order is null ** ?????");
			response.sendRedirect("cartlist");
		}
			
		// to get orderId 
		request.setAttribute("orderId", order.getOrderId());

		int totalPrice = 0, dicountPrice = 0, lastPrice = 0; 
		int totalShippingCost = 0; 
		// to get content of Order Table, OrderItemTable
		List<OrderItem> orderItemList = oimapper.selectOrderItemByNo(orderId);
		
		request.setAttribute("orderItemList", orderItemList);
		
		System.out.println("*order*** orderItemList= "+orderItemList+ ", *** orderItemList size= " + orderItemList.size());
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/shop/orderlist.jsp");
		rd.forward(request, response);
//		response.sendRedirect("orderlist?'orderId'=orderId&'memberId'=memberId");
		System.out.println("** End of OrderListController, After order ");

//		response.sendRedirect("list");
	}

}
