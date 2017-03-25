package com.gt.bookshop.entity;

import java.util.Date;

/**
 * Created by 龚涛 on 2017/2/10/010.
 * 图书实体类
 */
public class Book {

    //图书编号
    private int id;

    //图书标题
    private String title;

    //ISBN   1 a-f 2[0-5] 12个数字 最后一个是字母
    private String ISBN;

    //作者
    private String author;

    // 出版社编号
    private int publisherId;

    // 出版日期
    private Date publishDate;

    // 市场价
    private double marketPrice;

    // vip价额
    private double unitPrice;

    // 内容描述
    private String contentDescription;

    ///章节描述
    private String TOC;

    ///  //图书类别编号
    private int categoryId;

    /// //点击率
    private int clicks;

    ///类别和图书是一对多关系
    private Category category;

    /// 出版社和图书室一对多关系
    private Publisher publisher;

    /// 这个属性是扩展的，数据库里不存在，表示图书评分
    private double bookRating;

    // 属性的getter setter 方法
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPublisherId() {
        return publisherId;
    }

    public void setPublisherId(int publisherId) {
        this.publisherId = publisherId;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public double getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(double marketPrice) {
        this.marketPrice = marketPrice;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getContentDescription() {
        return contentDescription;
    }

    public void setContentDescription(String contentDescription) {
        this.contentDescription = contentDescription;
    }

    public String getTOC() {
        return TOC;
    }

    public void setTOC(String TOC) {
        this.TOC = TOC;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getClicks() {
        return clicks;
    }

    public void setClicks(int clicks) {
        this.clicks = clicks;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public double getBookRating() {
        return bookRating;
    }

    public void setBookRating(double bookRating) {
        this.bookRating = bookRating;
    }

}
