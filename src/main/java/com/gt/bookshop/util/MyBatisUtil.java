package com.gt.bookshop.util;

//import org.apache.ibatis.io.Resources;
//import org.apache.ibatis.session.SqlSession;
//import org.apache.ibatis.session.SqlSessionFactory;
//import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.Reader;

/**
 * Created by Administrator on 2017/2/10/010.
 */
public class MyBatisUtil{
//        private MyBatisUtil(){
//          }
//        private static final String RESOURCE = "mybatis-config.xml";
//        private static SqlSessionFactory sqlSessionFactory = null;
//        private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();
//        static {
//          Reader reader = null;
//          try {
//              reader = Resources.getResourceAsReader(RESOURCE);
//              SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
//              sqlSessionFactory = builder.build(reader);
//          } catch (Exception ex) {
//              throw new ExceptionInInitializerError("初始化 MyBatis 错误");
//          }
//        }
//        public static SqlSessionFactory getSqlSessionFctory(){
//              return sqlSessionFactory;
//          }
//        public static SqlSession getSession(){
//              //threadLocal 的 get() 方法根据当前线程返回其对应的线程内部变量，也就是我们需要的 SqlSession。
//              //多线程情况下共享数据库连接是不安全的
//              // ThreadLocal 保证了每个线程都有自己的 SqlSession
//              SqlSession session = threadLocal.get();
//              //如果 session 为 null ，则打开一个新的 session
//              if(session == null){
//                      session = (sqlSessionFactory != null) ? sqlSessionFactory.openSession() : null;
//                      threadLocal.set(session);
//                  }
//              return session;
//          }
  }