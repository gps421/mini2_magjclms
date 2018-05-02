package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Order;

public interface OrderMapper {

	List<Order> selectOrder();
	Order selectOrderByNo(int no);
	void insertOrder(Order order);

}
