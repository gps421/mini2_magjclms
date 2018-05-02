package kr.co.magiclms.domain;

import java.util.Date;

public class Cart {
    // 장바구니번호 
    private int cartNo;

    // 회원아이디 
    private String memberId;

    // 장바구니생성날짜 
    private Date cartDate;

    public int getCartNo() {
        return cartNo;
    }

    public void setCartNo(int cartNo) {
        this.cartNo = cartNo;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public Date getCartDate() {
        return cartDate;
    }

    public void setCartDate(Date cartDate) {
        this.cartDate = cartDate;
    }


}
