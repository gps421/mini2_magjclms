package kr.co.magiclms.domain;

import java.util.Date;

public class Review {

    // 리뷰번호 
    private int reviewNo;

    // 상품목록번호 
    private int goodsNo;

    // 리뷰생성날짜 
    private Date reviewRegDate;

    // 회원아이디 
    private String memberId;

    // 리뷰평점 
    private String reviewPoint;

    // 리뷰내용 
    private String reviewContent;

    public int getReviewNo() {
        return reviewNo;
    }

    public void setReviewNo(int reviewNo) {
        this.reviewNo = reviewNo;
    }

    public int getGoodsNo() {
        return goodsNo;
    }

    public void setGoodsNo(int goodsNo) {
        this.goodsNo = goodsNo;
    }

    public Date getReviewRegDate() {
        return reviewRegDate;
    }

    public void setReviewRegDate(Date reviewRegDate) {
        this.reviewRegDate = reviewRegDate;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getReviewPoint() {
        return reviewPoint;
    }

    public void setReviewPoint(String reviewPoint) {
        this.reviewPoint = reviewPoint;
    }

    public String getReviewContent() {
        return reviewContent;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
    }
}
