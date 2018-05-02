package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Review;

public interface ShopReviewMapper {

	void insertReview(Review review);

	List<Review> detailGoodsReview(int goodsCode);
	void insertReviewPoint(int review);
	void updateReviewContent(String review);
}
