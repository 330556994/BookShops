package com.gt.bookshop.service;

import com.gt.bookshop.entity.Order;
import com.gt.bookshop.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 龚涛 on 2017/2/12/012.
 * 功能描述： 订单的业务类
 */

@Service
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;


    /**
     * 添加一个订单，这里需要启用事务来完成添加
     * @param order  待添加的订单
     * @return
     */
    public int add(Order order) {
        orderMapper.add(order);
        return this.getId();
    }

    public int getId(){
        return orderMapper.getId();
    }
}
