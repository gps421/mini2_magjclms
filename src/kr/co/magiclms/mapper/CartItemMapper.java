package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.CartItem;

public interface CartItemMapper {

	List<CartItem> selectCartItem(CartItem cartitem);
	List<CartItem> selectCartItemByNo(int no);
	void insertCartItem(CartItem cartitem);
	int updateCartItem(CartItem cartitem);
	int deleteCartItemByNo(int no);
	int deleteCartItem();
	int deleteCartItemByCode(int code);

}
