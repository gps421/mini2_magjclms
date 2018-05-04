package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Cart;

public interface CartMapper {
	
	Cart getSnoCart(int sNo);
	
	Cart selectCartByName(String memberId);
	Cart selectCartByNo(int no);
	void insertCart(Cart cart);
	
	int updateCart(Cart cart);
	int deleteCartByNo(int no);
	int deleteCart();
	int deleteCartByCode(int code);
}
