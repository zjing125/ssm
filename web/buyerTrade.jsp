<%--
  Created by IntelliJ IDEA.
  User: jokereven
  Date: 2022/6/8
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>爱购我的订单</title>
    <base href="${pageContext.request.contextPath}/">
    <link rel="icon" type="image/x-icon" href="static/img/title-icon.jpg"/>
    <link rel="stylesheet" href="static/css/reset.css" />
    <link rel="stylesheet" href="static/css/top.css" />
    <link rel="stylesheet" href="static/css/buyerTrade.css" />
    <link rel="stylesheet" href="static/css/footer.css" />
    <link rel="stylesheet" href="static/css/font-awesome-4.7.0/Font-Awesome-master/css/font-awesome.min.css" />
</head>
<body>
<!--头部-->
<div class="top" id="top">
    <!--头部bar-->
    <div class="top-bar">
        <div class="w1230 top-main">
            <a href="index.jsp" class="toIndex">
                <i class="fa fa-home"></i>
                <span>爱购网首页</span>
            </a>
            <div class="account">
                <span>zhanghao<i class="fa fa-caret-down"></i></span>
                <div class="manage">
                    <ul>
                        <li><a href="deliverAddress.jsp">收货地址</a></li>
                        <li><a href="shoppingCart.jsp">购物车</a></li>
                        <li><a href="buyerTrade.jsp">我的订单</a></li>
                        <li><a href="/user/logout">退出</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="w1230">
    <img src="static/img/logo.png" width="100" height="40" class="logo"/>
    <span class="cart">我的订单</span>
</div>
<!--订单列表-->
<div class="w1230 trade">
    <!--标题栏-->
    <div class="trade-title">
        <ul class="clear-float">
            <li class="info">宝贝</li>
            <li class="price">单价</li>
            <li class="num">数量</li>
            <li class="real-price-title">实付款</li>
            <li class="operate">交易操作</li>
        </ul>
    </div>
    <!--详细展示-->
    <div class="trade-list">
        <div>
            <div class="trade-list-top clear-float">
                <div class="trade-list-l">
                    <span class="trade-date">2018-10-09</span>
                    <span class="trade-no">订单号:23959345783458275</span>
                </div>
                <a href="#"><i class="fa fa-trash trade-list-r"></i></a>
            </div>
            <div>
                <ul class="clear-float">
                    <li class="info">
                        <img src="static/img/book01.jpg" />
                        <p>七年级7册包邮 西游记原著正版朝花夕拾鲁迅初中生呐喊猎人笔记湘行散记镜花缘白洋淀纪事世界经典名著青少学版初一课外阅读书籍</p>
                    </li>
                    <li class="price">￥55.80</li>
                    <li class="num">1</li>
                    <li class="real-price">￥55.80</li>
                    <li class="operate"><a href="#">再次购买</a></li>
                </ul>
                <ul class="clear-float">
                    <li class="info">
                        <img src="static/img/mod01.jpg" />
                        <p> 日本正品代购 资生堂心机2014年新款 润彩唇膏/口红 保湿滋润持久</p>
                    </li>
                    <li class="price">￥198.00</li>
                    <li class="num">1</li>
                    <li class="real-price">￥198.00</li>
                    <li class="operate"><a href="#">再次购买</a></li>
                </ul>
            </div>
        </div>
        <div>
            <div class="trade-list-top clear-float">
                <div class="trade-list-l">
                    <span class="trade-date">2018-10-09</span>
                    <span class="trade-no">订单号:23959345783458275</span>
                </div>
                <a href="#"><i class="fa fa-trash trade-list-r"></i></a>
            </div>
            <div>
                <ul class="clear-float">
                    <li class="info">
                        <img src="static/img/cloth01.jpg" />
                        <p>2018秋冬新款女装减龄慵懒风V领毛衣女宽松套头显瘦长袖针织衫潮</p>
                    </li>
                    <li class="price">￥300.00</li>
                    <li class="num">1</li>
                    <li class="real-price">￥300.00</li>
                    <li class="operate"><a href="#">再次购买</a></li>
                </ul>
            </div>
        </div>
        <div>
            <div class="trade-list-top clear-float">
                <div class="trade-list-l">
                    <span class="trade-date">2018-10-09</span>
                    <span class="trade-no">订单号:23959345783458275</span>
                </div>
                <a href="#"><i class="fa fa-trash trade-list-r"></i></a>
            </div>
            <div>
                <ul class="clear-float">
                    <li class="info">
                        <img src="static/img/mod01.jpg" />
                        <p> 日本正品代购 资生堂心机2014年新款 润彩唇膏/口红 保湿滋润持久</p>
                    </li>
                    <li class="price">￥198.00</li>
                    <li class="num">1</li>
                    <li class="real-price">￥198.00</li>
                    <li class="operate"><a href="#">再次购买</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--脚注-->
<div class="footer">
    <p class="w1230">
        <a href="#">关于爱购</a>
        <a href="#">合作伙伴</a>
        <a href="#">营销中心</a>
        <a href="#">廉正举报</a>
        <a href="#">联系客服</a>
        <a href="#">开发平台</a>
        <a href="#">诚征英才</a>
        <a href="#">联系我们</a>
        <a href="#">网站地图</a>
        <a href="#">知识产权</a><span>|</span>
        <span>&copy;2018-2020 igo.com 版权所有</span>
    </p>
</div>
</body>
</html>
