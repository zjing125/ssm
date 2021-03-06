<%--
  Created by IntelliJ IDEA.
  User: jokereven
  Date: 2022/6/8
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>收货地址管理</title>
    <base href="${pageContext.request.contextPath}/">
    <link rel="icon" type="image/x-icon" href="static/img/title-icon.jpg"/>
    <link rel="stylesheet" href="static/css/reset.css" />
    <link rel="stylesheet" href="static/css/top.css" />
    <link rel="stylesheet" href="static/css/deliverAddress.css" />
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
    <span class="cart">收货地址</span>
</div>
<!--编辑收货地址-->
<div class="w1230">
    <h3 class="add-title">新增收货地址</h3>
    <div class="add-address">
        <form action="#" method="post">
            <div class="add-area">
                <label>地址信息：</label>
                <div id="area"></div>
            </div>
            <p>
                <label>详细地址：</label>
                <textarea placeholder="请输入详细地址信息，如道路、门牌号、小区、楼栋号、单元等信息" class="add-detail"></textarea>
            </p>
            <p>
                <label>收货人姓名：</label>
                <input type="text" class="add-name" placeholder="请输入收货人姓名"/>
            </p>
            <p>
                <label>手机号码：</label>
                <input type="text" class="add-tel" placeholder="请输入收货人手机号"/>
            </p>
            <p class="chk-address">
                <input type="checkbox" />
                <span>设置为默认收货地址</span>
            </p>
            <input type="submit" value="保存" class="save-btn"/>
        </form>
    </div>
</div>
<!--收货地址列表-->
<div class="add-list w1230">
    <p class="message"><i class="fa fa-exclamation-circle"></i>只能保存5个地址</p>
    <table class="table-list">
        <tr>
            <th class="t-name">收货人</th>
            <th class="t-address">收货地址</th>
            <th class="t-tel">手机号</th>
            <th class="t-operate">操作</th>
            <th class="t-default"></th>
        </tr>
        <tr>
            <td>张三</td>
            <td>湖北省武汉市洪山区光谷软件园A</td>
            <td>13912349876</td>
            <td><a href="#">修改</a>|<a href="#">删除</a></td>
            <td class="default-on">默认地址</td>
        </tr>
        <tr>
            <td>李四</td>
            <td>湖北省武汉市洪山区光谷软件园B</td>
            <td>13009876666</td>
            <td><a href="#">修改</a>|<a href="#">删除</a></td>
            <td><a href="#">设为默认</a></td>
        </tr>
        <tr>
            <td>王五</td>
            <td>湖北省武汉市洪山区光谷软件园C</td>
            <td>13588880000</td>
            <td><a href="#">修改</a>|<a href="#">删除</a></td>
            <td><a href="#">设为默认</a></td>
        </tr>
    </table>
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
<script src="static/js/area.js"></script>
</body>
</html>
