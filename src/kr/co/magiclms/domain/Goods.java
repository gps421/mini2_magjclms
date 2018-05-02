package kr.co.magiclms.domain;

public class Goods {

    // 상품목록번호 
    private int goodsNo;

    // 상품이름 
    private String name;

    // 상품가격 
    private int price;

    // 상품코드 
    private int code;

    // 상품설명 
    private String description;

    // 상품분류 
    private String category;

    // 할인가격 
    private int salePrice;

    // 적립금액 
    private int save;

    // 상품사진경로 
    private String goodsPicPath;

    // 배송비 
    private int shippingCost;

    public int getGoodsNo() {
        return goodsNo;
    }

    public void setGoodsNo(int goodsNo) {
        this.goodsNo = goodsNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCaregory(String category) {
        this.category = category;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public int getSave() {
        return save;
    }

    public void setSave(int save) {
        this.save = save;
    }

    public String getGoodsPicPath() {
        return goodsPicPath;
    }

    public void setGoodsPicPath(String goodsPicPath) {
        this.goodsPicPath = goodsPicPath;
    }

    public int getShippingCost() {
        return shippingCost;
    }

    public void setShippingCost(int shippingCost) {
        this.shippingCost = shippingCost;
    }

}
