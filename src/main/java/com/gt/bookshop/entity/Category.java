package com.gt.bookshop.entity;

/**
 * Created by 龚涛 on 2017/2/10/010.
 * 图书类别实体类
 */
public class Category {

    // 类别编号
    private int id;

    // 类别名称
    private String name;

    // 排序字段，显示列表时，默认的排序方式
    private int sortNum;

    // 该类别下图书总数，这个属性是为了在前台列表页中用
    private int bookCount;

    // 属性的getter setter 方法
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSortNum() {
        return sortNum;
    }

    public void setSortNum(int sortNum) {
        this.sortNum = sortNum;
    }

    public int getBookCount() {
        return bookCount;
    }

    public void setBookCount(int bookCount) {
        this.bookCount = bookCount;
    }

    public Category(int id, String name, int sortNum, int bookCount) {
        this.id = id;
        this.name = name;
        this.sortNum = sortNum;
        this.bookCount = bookCount;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sortNum=" + sortNum +
                ", bookCount=" + bookCount +
                '}';
    }

    public Category(){}
}
