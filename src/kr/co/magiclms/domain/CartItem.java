package kr.co.magiclms.domain;

public class CartItem {
    // 장바구니아이템번호 
    private int cartItemNo;

    // 장바구니번호 
    private int cartNo;

    // 상품목록번호 
    private int goodsNo;

    // 상품이름 
    private String goodsName;

    // 상품개수 
    private int goodsCount;

    // 소계 
    private int goodsSum;

    // 배송비 
    private int shippingCost;

    public int getCartItemNo() {
        return cartItemNo;
    }

    public void setCartItemNo(int cartItemNo) {
        this.cartItemNo = cartItemNo;
    }

    public int getCartNo() {
        return cartNo;
    }

    public void setCartNo(int cartNo) {
        this.cartNo = cartNo;
    }

    public int getGoodsNo() {
        return goodsNo;
    }

    public void setGoodsNo(int goodsNo) {
        this.goodsNo = goodsNo;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public int getGoodsCount() {
        return goodsCount;
    }

    public void setGoodsCount(int goodsCount) {
        this.goodsCount = goodsCount;
    }

    public int getGoodsSum() {
        return goodsSum;
    }

    public void setGoodsSum(int goodsSum) {
        this.goodsSum = goodsSum;
    }

    public int getShippingCost() {
        return shippingCost;
    }

    public void setShippingCost(int shippingCost) {
        this.shippingCost = shippingCost;
    }

}
