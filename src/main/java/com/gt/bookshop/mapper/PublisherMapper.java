package com.gt.bookshop.mapper;

import com.gt.bookshop.entity.Publisher;

import java.util.List;

/**
 * 功能描述： 出版社的业务类
 * Created by 龚涛 on 2017/2/11/011.
 */
public interface PublisherMapper {

    /**
     * 得到出版社所有信息
     * @return 出版社集合
     */
    public List<Publisher> getList();

    /**
     * 分页版本
     * @param start
     * @param end
     * @return
     */
    public List<Publisher> getList(int start, int end);

    /**
     * 得到出版社总记录数
     * @return
     */
    public int getRecordCount();

    /**
     * 根据出版社编号获得出版社对象
     * @param id 出版社编号
     * @return 出版社对象，如果不存在，则null
     */
    public Publisher getSingle(int id);

    /**
     * 根据出版社编号删除出版社
     * @param id 出版社编号
     */
    public void gelete(int id);
}
