<%--
  Created by IntelliJ IDEA.
  User: jokereven
  Date: 2022/6/8
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>爱购购物车</title>
    <base href="${pageContext.request.contextPath}/">
    <link rel="icon" type="image/x-icon" href="static/img/title-icon.jpg"/>
    <link rel="stylesheet" href="static/css/reset.css" />
    <link rel="stylesheet" href="static/css/top.css" />
    <link rel="stylesheet" href="static/css/shoppingCart.css" />
    <link rel="stylesheet" href="static/css/footer.css" />
    <link rel="stylesheet" href="static/css/font-awesome-4.7.0/Font-Awesome-master/css/font-awesome.min.css" />
    <script type="text/javascript" src="static/js/jquery.js" ></script>
    <script type="text/javascript" src="static/js/shoppingCart.js" ></script>
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
    <span class="cart">购物车</span>
</div>
<!--收货地址-->
<div class="w1230 address">
    <div class="default">
        <div class="default-title">收货地址</div>
        <div class="default-list">
            <span class="add-person">收货人：<span id="addName"></span></span>
            <span class="add-tel" id="addTel"></span>
            <p class="add">收货地址：<span id="add"></span></p>
        </div>
        <div class="down"><i class="fa fa-chevron-up" id="down"></i></div>
    </div>
    <div class="address-list" id="address-list">
        <ul>
            <li class="clear-float">
                <input type="radio" name="address" class="single" />
                <div class="address-des">
                    <span class="add-person">张三</span>
                    <span class="add-tel">13912349876</span>
                    <p>湖北省武汉市洪山区光谷软件园A</p>
                </div>
            </li>
            <li class="clear-float">
                <input type="radio" name="address" class="single"/>
                <div class="address-des">
                    <span class="add-person">李四</span>
                    <span class="add-tel">13009876666</span>
                    <p>湖北省武汉市洪山区光谷软件园B</p>
                </div>
            </li>
            <li class="clear-float">
                <input type="radio" name="address" class="single"/>
                <div class="address-des">
                    <span class="add-person">王五</span>
                    <span class="add-tel">13588880000</span>
                    <p>湖北省武汉市洪山区光谷软件园C</p>
                </div>
            </li>
        </ul>
    </div>
</div>
<!--购物车展示-->
<div class="w1230 shopping">
    <!--标题栏-->
    <div class="shopping-title">
        <ul class="clear-float">
            <li class="chk"><input type="checkbox" class="all-chk"/></li>
            <li class="info">商品信息</li>
            <li class="price">单价（元）</li>
            <li class="num">数量</li>
            <li class="min-price-title">小计（元）</li>
            <li class="operate">操作</li>
        </ul>
    </div>
    <!--详细展示-->
    <div class="shopping-list">
        <ul class="clear-float">
            <li class="chk"><input type="checkbox" class="chkbox" product-id="1001"/></li>
            <li class="info"><a href="#" target="_blank">
                <img src="static/img/book01.jpg" />
                <p>七年级7册包邮 西游记原著正版朝花夕拾鲁迅初中生呐喊猎人笔记湘行散记镜花缘白洋淀纪事世界经典名著青少学版初一课外阅读书籍</p>
            </a></li>
            <li class="price">55.80</li>
            <li class="num">
                <a href="javascript:void(0)" class="minus">-</a>
                <input type="text" value="1" class="num-val"/>
                <a href="javascript:void(0)" class="add">+</a>
            </li>
            <li class="min-price">55.80</li>
            <li class="operate"><a href="#">删除</a></li>
        </ul>
        <ul class="clear-float">
            <li class="chk"><input type="checkbox" class="chkbox" product-id="1002"/></li>
            <li class="info"><a href="#" target="_blank">
                <img src="static/img/cloth01.jpg" />
                <p>2018秋冬新款女装减龄慵懒风V领毛衣女宽松套头显瘦长袖针织衫潮</p>
            </a></li>
            <li class="price">300.00</li>
            <li class="num">
                <a href="javascript:void(0)" class="minus">-</a>
                <input type="text" value="1" class="num-val"/>
                <a href="javascript:void(0)" class="add">+</a>
            </li>
            <li class="min-price">300.00</li>
            <li class="operate"><a href="#">删除</a></li>
        </ul>
        <ul class="clear-float">
            <li class="chk"><input type="checkbox" class="chkbox" product-id="1003"/></li>
            <li class="info"><a href="#" target="_blank">
                <img src="static/img/mod01.jpg" />
                <p> 日本正品代购 资生堂心机2014年新款 润彩唇膏/口红 保湿滋润持久</p>
            </a></li>
            <li class="price">198.00</li>
            <li class="num">
                <a href="javascript:void(0)" class="minus">-</a>
                <input type="text" value="1" class="num-val"/>
                <a href="javascript:void(0)" class="add">+</a>
            </li>
            <li class="min-price">198.00</li>
            <li class="operate"><a href="#">删除</a></li>
        </ul>
    </div>
    <!--合计-->
    <div class="shopping-footer clear-float">
        <div class="shopping-footer-l">
            <input type="checkbox" class="all-chk2 all-chk"/>
            <span>全选（共<span class="all-num"></span>件）</span>
            <span class="line">|</span>
            <a href="#" class="all-del">批量删除</a>
        </div>
        <div class="shopping-footer-r">
            <span>已选商品<span class="choose-num">0</span>件</span>
            <span class="line">|</span>
            <span>合计：<span class="total">￥0.00</span></span>
            <a href="#" class="compute">结算</a>
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
<script>
    $(function(){
        $(".compute").click(function(){
            var jsonArr = [];
            //获得所有被选中的chkbox
            $(".chkbox:checked").each(function(){
                var id = $(this).attr("product-id");
                console.log($(this).attr("product-id"));
                //获得同一行的数量
                var num = $(this).parent().parent().find(".num-val").val();
                console.log(num);
                //将数据转换为json对象，添加到数据
                var json = {"productId":id,"num":num};
                jsonArr.push(json);
            });
            console.log(jsonArr);
            //将数组转换为字符串
            console.log(JSON.stringify(jsonArr));
        });
    });
</script>
</body>
</html>
