package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Goods;

public interface GoodsMapper {

	List<Goods> selectGoods();
	List<Goods> selectGoodsByCategory(String name);
	List<Goods> selectGoodsByCategoryS();
	List<Goods> selectGoodsByCategoryT();
	Goods selectGoodsDetailByName(String name);
	Goods selectGoodsDetailByNo(int no);
	
}
