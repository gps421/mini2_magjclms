package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.OrderItem;

public interface OrderItemMapper {

	List<OrderItem> selectOrder();
	List<OrderItem> selectOrderItemByNo(int no);
	void insertOrderItem(OrderItem orderitem);
}
