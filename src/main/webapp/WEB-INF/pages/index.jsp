<%--
  Created by IntelliJ IDEA.
  User: GongTao
  Date: 2017/2/11/011
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
  <meta name="Robots" content="index,follow"/>
  <title>"第三波书店"-网上书店</title>
  <link href="/css/global.css" rel="stylesheet" type="text/css"/>
  <link href="/css/Index.css" rel="stylesheet" type="text/css" />
  <script src="/Scripts/jquery-1.8.2.min.js"></script>
  <script src="/easyui1.5/jquery.easyui.min.js"></script>
  <script>
    function Exit(){
      if(confirm("真的要退出吗?")){
        location.href="user/exit";
      }
    }
  </script>
</head>
<body>
<div id="top">
  <c:set var="totolMPrice" value="0"></c:set>
  <c:set var="totolUPrice" value="0"></c:set>
  <c:set var="buyCount" value="0"></c:set>
  <c:forEach items="${items}" var="item">
    <c:set var="totolMPrice" value="${totolMPrice+item.totalMarketPrice }"></c:set>
    <c:set var="totolUPrice" value="${totolUPrice+item.totalUnitPrice }"></c:set>
    <c:set var="buyCount" value="${buyCount+item.qty }"></c:set>
  </c:forEach>
  <div class="status">您好，欢迎来到第三波书店^_^
  <c:choose>
    <c:when test="${sessionScope.user.loginId==null}">
         <span>
           <a href="user/login">【登录】</a>
           <a href="user/login">【免费注册】</a>
           <a href="car">【购物车】</a>
         </span>
    </c:when>
    <c:otherwise>
      <span>
         <a href="user/login">【会员中心】</a>
         <a href="car">【购物车】</a>
         <a href="javascript:void(0)" onclick="Exit()">【退出】</a>
      </span>
    </c:otherwise>
  </c:choose>
  </div>


  <%--<div class="status">您好，欢迎来到第三波书店^_^--%>
  <%--<span>--%>
  <%--【会员中心】【购物车】【退出】--%>
  <%--</span>--%>
  <%--</div>--%>

  <div class="member">
    <ul>
      <li><a href="#"><img src="/img/payVIP.gif" height="18" alt="开通VIP"/></a></li>
      <li><a href="#"><img src="/img/payCoin.gif" height="18" alt="学币中心"/></a></li>
    </ul>
  </div>
</div>

<div id="header">
  <div id="logo"><img src="/img/logo.gif" alt="第三波书店"/></div>
  <div id="nav">
    <div id="a_b_01"><img src="/img/a_b_01.gif"/>[<img src="/img/taobao.gif"/> <a href="#">分站</a>]</div>
    <ul id="mainnav">
      <LI CLASS="CURRENT"><A HREF="INDEX.HTML">首页</A></LI>
      <LI><A HREF="LOGIN.HTML">登录</A></LI>
      <LI><A HREF="REGISTER.HTML">注册</A></LI>
      <LI><A HREF="#">商讯</A></LI>
      <LI><A HREF="#">购物流程</A></LI>
      <LI><A HREF="#">在线客服</A></LI>
      <LI><A HREF="#">积分兑换</A></LI>
      <LI><A HREF="#">书籍求购</A></LI>
      <LI><A HREF="#">帮助</A></LI>
    </ul>
  </div>
</div>

<div id="container" style="height: auto">
  <div id="intro">
    <div id="basket"><a href="car">
      <c:choose>
        <c:when test="${items==null}">
          目前您的购物篮是空的
        </c:when>
        <c:otherwise>
          共购买${buyCount}本书，应付${totolUPrice}元
        </c:otherwise>
      </c:choose>
    </a></div>
    <div id="search">
      <form action="" method="post" target="_blank">
        <input type="text" id="keyword" class="search_key" />
        <input type="submit" id="s_submit" class="search_sub" value="" />
      </form>
    </div>
    <div id="alltype">
      <!--这里调用分部视图显示图书分类-->
      <%--@{--%>
      <%--//呈现 由action返回的分部视图--%>
      <%--Html.RenderAction("showcategory", "commonview");--%>
      <%--}--%>

      <!--调用结束-->
      <h1 class="all_type black"><a href="#">查看所有分类>></a></h1>
      <div id="subnav">
        <ul class="black">
          <c:forEach items="${categories}" var="c">
          <li><a href="books/index/${c.id}">${c.name}</a></li>
          </c:forEach>
        </ul>
      </div>

    </div>
    <!--link start-->
    <div id="choice_pub">
      <select name="publishs" id="publishs" class="n_select">
        <option>>>根据出版社选择图书</option>
        <c:forEach items="${publishers}" var="p" >
          <option value="${p.id}">${p.name}</option>
        </c:forEach>

      </select>

      <select name="publishs" id="special" class="n_select">
        <option>>>根据专题选择图书</option>
        <option>国庆出游专题</option>
        <option>新年计划专题</option>
      </select>
    </div>

    <div id="s_b_03"><a href="#">赖世雄美语从头学</a><br /><a href="#">沪江团购 ，价格更优惠</a></div>
    <!--link start-->
  </div>

  <!--middle content-->
  <div id="content">
    <div id="magic"><img src="/img/a_b_02.jpg" alt="幻灯图片" width="480" height="200" /></div>
    <div id="a_b_02">
      <a href="#">电子词典专柜上线</a>
      <a href="#">Lucy陪你说真人口语英语对译软件</a>
      <a href="#" class="red">哇~这东西真便宜，大家快来抢啊！</a>
    </div>
    <!--comment books start-->
    <div id="comment_book">
      <ul>
        <c:forEach items="${homeBooks}" var="homeb">
          <li>
            <a href="books/detail/${homeb.id}">
              <img src="/img/BookCovers/${homeb.ISBN}.jpg" alt="${homeb.title}" />
            </a>
            <a href="books/detail/${homeb.id}">
              <c:choose>
                <c:when test="${fn:length(homeb.title)>11 }">
                  ${ fn:substring(homeb.title ,0,11)}
                </c:when>
                <c:otherwise>
                  ${homeb.title}
                </c:otherwise>
              </c:choose>
            </a>
          </li>
        </c:forEach>
      </ul>
    </div>
    <!--comment books end-->
  </div>

  <!--sidebar content-->
  <div id="sidebar">
    <ul id="notice">
      <li><a href="#">国庆期间货物延期配送公告</a></li>
      <li><a href="#">英语高级口语资格考试</a></li>
      <li><a href="#">英语高级口语资格考试</a></li>
      <li><a href="#">英语高级口语资格考试</a></li>
    </ul>
    <div id="order_find">
      <form action="" method="post" target="_blank">
        <label>订单号：</label><input type="text" id="keyword" class="order_key" />
        <input type="submit" id="s_submit" class="order_sub" value="查询状态" />
      </form>
    </div>
    <div class="service">
      <p><a href="#"><img src="/img/QQ_01.gif" /></a>
        <a href="#"><img src="/img/QQ_02.gif" /></a>
        <a href="#"><img src="/img/QQ_02.gif" /></a></p>
      <p><a href="#"><img src="/img/taobao_01.gif" /></a>
        <a href="#"><img src="/img/taobao_02.gif" /></a></p>
    </div>
    <!--hot books start-->
    <div class="sidedt hots">
      <h1>新书排行</h1>
      <ul>
        <c:forEach items="${newBooks}" var="nb">
        <li>
          <a href="books/detail/${nb.id}">
            <c:choose>
              <c:when test="${fn:length(nb.title)>15 }">
                ${ fn:substring(nb.title ,0,15)}...
              </c:when>
              <c:otherwise>
                ${nb.title}
              </c:otherwise>
            </c:choose>
          </a>
        </li>
        </c:forEach>
      </ul>
    </div>
    <!--hot books end-->
    <!--laster books start-->
    <div class="sidedt laster">
      <h1>热销排行</h1>
      <ul>
        <c:forEach items="${hotBooks}" var="hb">
          <li>
            <a href="books/detail/${hb.id}">
              <c:choose>
                <c:when test="${fn:length(hb.title)>15 }">
                  ${ fn:substring(hb.title ,0,15)}...
                </c:when>
                <c:otherwise>
                  ${hb.title}
                </c:otherwise>
              </c:choose>
            </a>
          </li>
        </c:forEach>
      </ul>
    </div>
    <!--laster books end-->
  </div>
</div>

<div id="footer" style="height: 100px;">
  <!--contac us-->
  <div class="telephone">
    <strong>热线</strong> 021-61508168　<strong>传真</strong> 021-61508168-8020　 <br/>
    <strong>Q Q</strong>375013071  13483528    562655482  1143735195（技术)<br/>
    <strong>MSN</strong> hjservice@hotmail.com   <strong>信箱</strong> shop@hjenglish.com<br/>
    <strong>帮助</strong> <a href="/help/help.aspx" target="_blank">银行汇款帐户</a> <a href="/help/help.aspx#help_post"
                                                                                target="_blank">邮局汇款地址</a> <a
          href="/help/help.aspx#help_ship" target="_blank">送货方式及费用</a> <a
          href="http://www.hjenglish.com/down/faq_2.htm" target="_blank">如何进行下载</a>
  </div>
  <!---->
  <div class="imp_link">
    <img src="/img/alipay.gif" alt="支付宝支付"/><img src="/img/online_pay.gif" alt="在线支付"/><br/>
    <a href="http://www.hjenglish.com/about/aboutus.htm" target="_blank">网站介绍</a>　<a
          href="http://www.hjenglish.com/about/partner.htm" target="_blank">合作伙伴</a>　<a href="#"
                                                                                        target="_blank">网站地图</a>　<a
          href="#" target="_blank">联系我们</a><br/>
    <a href="#" target="_blank">增值电信业务经营许可证沪B2-20040503</a></div>
</div>


</body>
</html>
