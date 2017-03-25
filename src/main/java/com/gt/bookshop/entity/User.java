package com.gt.bookshop.entity;

import java.util.Date;

/**
 * Created by 龚涛 on 2017/2/12/012.
 * 会员用户实体类
 */
public class User {
    private int id;                 //用户主键
    private String loginId;         //用户登录ID
    private String loginPwd ;       //用户登录密码
    private String name;            //用户真实姓名
    private String address;         //用户地址
    private String phone;           //电话号码
    private String mail;            //邮箱
    private Date birthday;          //用户生日
    private int userRoleId;         //用户等级id
    private String registerIp;      //用户注册IP
    private Date registerTime;      //用户注册时间
    private Integer scoreTotal;     //用户总积分数
    private Integer scoreCurrent;   //用户当前可用积分
    private String headImg;         //用户头像id
    private int isFrozen;           //用户账号是否被冻结

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(int userRoleId) {
        this.userRoleId = userRoleId;
    }

    public String getRegisterIp() {
        return registerIp;
    }

    public void setRegisterIp(String registerIp) {
        this.registerIp = registerIp;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public Integer getScoreTotal() {
        return scoreTotal;
    }

    public void setScoreTotal(Integer scoreTotal) {
        this.scoreTotal = scoreTotal;
    }

    public Integer getScoreCurrent() {
        return scoreCurrent;
    }

    public void setScoreCurrent(Integer scoreCurrent) {
        this.scoreCurrent = scoreCurrent;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public int getIsFrozen() {
        return isFrozen;
    }

    public void setIsFrozen(int isFrozen) {
        this.isFrozen = isFrozen;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", loginId='" + loginId + '\'' +
                ", loginPwd='" + loginPwd + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", mail='" + mail + '\'' +
                ", birthday=" + birthday +
                ", userRoleId=" + userRoleId +
                ", registerIp='" + registerIp + '\'' +
                ", registerTime=" + registerTime +
                ", scoreTotal=" + scoreTotal +
                ", scoreCurrent=" + scoreCurrent +
                ", headImg='" + headImg + '\'' +
                ", isFrozen=" + isFrozen +
                '}';
    }
}
