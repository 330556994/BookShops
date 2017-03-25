package com.gt.bookshop.entity;

/**
 * Created by 龚涛 on 2017/2/12/012.
 * 订单明细类
 */
public class OrderBook {

    /**
     * 明细编号
     */
    private int id;

    /**
     * 所属订单编号
     */
    private int orderID;

    /**
     * 购买图书编号
     */
    private int bookID;

    /**
     * 购买数量
     */
    private int quantity;

    /**
     * 图书单价
     */
    private double unitPrice;

    /**
     * 下面是 getter setter 方法
     */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getBookID() {
        return bookID;
    }

    public void setBookID(int bookID) {
        this.bookID = bookID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }
}
