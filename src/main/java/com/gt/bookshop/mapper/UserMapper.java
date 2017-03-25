package com.gt.bookshop.mapper;

import com.gt.bookshop.entity.User;

/**
 * Created by Administrator on 2017/2/13/013.
 */
public interface UserMapper {

    int login(User user);

    //根据用户 Id 返回一个用户对象
    User getUserById(int id);

    //根据用户的登录 Id (LoginId) 返回一个用户对象
    User getUserByLoginId(String loginId);


}
