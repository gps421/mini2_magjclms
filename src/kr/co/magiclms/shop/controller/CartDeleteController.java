package kr.co.magiclms.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.mapper.CartItemMapper;


@WebServlet("/shop/cartdelete")
public class CartDeleteController extends HttpServlet {

	@Override
	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartItemMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CartItemMapper.class);		
		
		int cartNo = Integer.parseInt(request.getParameter("cartNo"));
		int cartItemNo = Integer.parseInt(request.getParameter("cartItemNo"));
		
		System.out.println("[CartDeleteController] cartNo = "+cartNo+ ", *** cartItemNo info = " + cartItemNo);
		mapper.deleteCartItemByNo(cartItemNo);
		
		response.sendRedirect("cartlist?cartNo=" + cartNo);
	}
}

