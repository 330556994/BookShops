package com.gt.bookshop.entity;

import java.util.Date;
import java.util.List;

/**
 * Created by 龚涛 on 2017/2/12/012.
 * 订单实体类
 */
public class Order {
    /**
     * 订单编号
     */
    private int id;

    /**
     * 订购日期
     */
    private Date orderDate;

    /**
     * 所属会员编号
     */
    private int userId;

    /**
     * 订购商品总价
     */
    private double totalPrice;

    /**
     * 订单状态 1:未处理  只有这个状态会员可以取消，也可以合并订单
     * 2.处理中
     * 3.已发货
     * 4.会员已取消
     * 5.管理员取消
     * 6.已完成
     * 7.订单已合并
     * 8.订单已退
     */
    private int flag;

    /**
     * 收件人姓名
     */
    private String personName;

    /**
     * 收件人电话号码
     */
    private String phone;

    /**
     * 送件地址
     */
    private String address;

    /**
     * 快递费用
     */
    private int sendCash;

    /**
     * 会员取消理由，当会员取消订单时，必须输入取消理由
     */
    private String userCancelReason;

    /**
     * 订单备注，会员填写
     */
    private String orderRemark;

    /**
     * 因为业务模型中，通常是通过订单看明细
     * 所以，这里的一对多的设计，采用的是主表里建明细的集合
     * 该订单的明细集合
     */
    private List<OrderBook> OrderBooks;

    /**
     * 下面是各个属性的 getter setter 方法
     */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public String getPersonName() {
        return personName;
    }

    public void setPersonName(String personName) {
        this.personName = personName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSendCash() {
        return sendCash;
    }

    public void setSendCash(int sendCash) {
        this.sendCash = sendCash;
    }

    public String getUserCancelReason() {
        return userCancelReason;
    }

    public void setUserCancelReason(String userCancelReason) {
        this.userCancelReason = userCancelReason;
    }

    public String getOrderRemark() {
        return orderRemark;
    }

    public void setOrderRemark(String orderRemark) {
        this.orderRemark = orderRemark;
    }

    public List<OrderBook> getOrderBooks() {
        return OrderBooks;
    }

    public void setOrderBooks(List<OrderBook> orderBooks) {
        OrderBooks = orderBooks;
    }
}
