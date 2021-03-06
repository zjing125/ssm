<%-- Created by IntelliJ IDEA. User: jokereven Date: 2022/6/8 Time: 9:14 To change this template use File | Settings |
    File Templates. --%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>爱购商品详情页</title>
    <base href="${pageContext.request.contextPath}/">
    <link rel="icon" type="image/x-icon" href="static/img/title-icon.jpg"/>
    <link rel="stylesheet" href="static/css/reset.css" />
    <link rel="stylesheet" href="static/css/top.css" />
    <link rel="stylesheet" href="static/css/goodsDetail.css" />
    <link rel="stylesheet" href="static/css/footer.css" />
    <link rel="stylesheet" href="static/css/font-awesome-4.7.0/Font-Awesome-master/css/font-awesome.min.css" />
    <script type="text/javascript" src="static/js/jquery.js" ></script>
    <script>
        $(function(){
            //增加商品数量
            $(".add").click(function(){
                $("#goodsNum").val(parseInt($("#goodsNum").val())+1);
                $(".reduce").css({"backgroundPositionX": "0", "backgroundPositionY": "25px"});
            });
            //减少商品数量
            $(".reduce").click(function(){
                console.log($("#goodsNum").val());
                if($("#goodsNum").val()>1){
                    $("#goodsNum").val(parseInt($("#goodsNum").val())-1);
                    $(this).css({"backgroundPositionX": "0", "backgroundPositionY": "25px"});
                }
                if($("#goodsNum").val()==1){
                    $(this).css({"backgroundPositionX": "-24px", "backgroundPositionY": "25px"});
                }

            });
            var timer;
            //点击添加购物车
            $("#addCart").click(function(){
                clearTimeout(timer);
                $("#tips").css("display","inline-block");
                timer = setTimeout(function(){
                    $("#tips").css("display","none");
                },3000);
            });
        });
    </script>
</head>
<body>
<!--头部-->
<div class="top" id="top">
    <!--头部bar-->
    <div class="top-bar">
        <div class="w1230 top-bar-main">
            <ul>
                <li><a href="login.jsp" class="login">登录</a></li>
                <li><a href="register.jsp" class="register">注册</a></li>
                <li><a href="buyerTrade.jsp"><i class="fa fa-file-text-o"></i>我的订单</a></li>
                <li><a href="shoppingCart.jsp"><i class="fa fa-shopping-cart"></i>购物车</a></li>
            </ul>
        </div>
    </div>
    <!--logo+搜索-->
    <div class="top-header w1230 clear-float">
        <a href="index.jsp" target="_blank" class="logo">
            <img src="static/img/logo.png"/>
        </a>
        <div class="top-header-right">
            <!--搜索框-->
            <div class="search clear-float">
                <input type="text"  placeholder="牛奶" class="search-txt"/>
                <a href="#" class="search-btn">搜索</a>
            </div>
            <!--热搜-->
            <p class="hotkey">
                <a href="#">牛奶</a>
                <a href="#">牛仔裤</a>
                <a href="#">巧克力</a>
                <a href="#">月饼</a>
                <a href="#">抽纸</a>
                <a href="#">狗粮</a>
                <a href="#">奶粉</a>
                <a href="#">护发素</a>
                <a href="#">进口食品</a>
                <a href="#">良品铺子</a>
            </p>
        </div>
    </div>
</div>
<!--导航栏-->
<div class="nav">
    <div class="w1230">
        <div id="all-goods">
            <span class="all-goods">所有商品分类</span>
            <div class="nav-er" id="nav-er">
                <ul>
                    <li>
                        <h3><a href="#"><i class="fa fa-globe"></i>全球进口</a></h3>
                    </li>
                    <li>
                        <h3><a href="#"><i class="fa fa-cutlery"></i>国产食品</a></h3>
                    </li>
                    <li>
                        <h3><a href="#"><i class="fa fa-diamond"></i>服装服饰</a></h3>
                    </li>
                    <li>
                        <h3><a href="#"><i class="fa fa-magic"></i>护肤美妆</a></h3>
                    </li>
                    <li>
                        <h3><a href="#"><i class="fa fa-bath"></i>家居用品</a></h3>
                    </li>
                    <li>
                        <h3><a href="#"><i class="fa fa-futbol-o"></i>儿童玩具</a></h3>
                    </li>
                    <li>
                        <h3><a href="#"><i class="fa fa-television"></i>电子产品</a></h3>
                    </li>
                    <li>
                        <h3><a href="#"><i class="fa fa-medkit"></i>医药保健</a></h3>
                    </li>
                    <li>
                        <h3><a href="#"><i class="fa fa-book"></i>图书学习</a></h3>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--商品详情-->
<div class="w1230 clear-float goods-main">
    <div class="big-img">
        <img src="static/img/detail/big-detail.jpg" />
    </div>
    <div class="goods-detail">
        <h3 class="goods-title">盼盼 法式软面包 奶香味 300g（内装15枚）</h3>
        <p class="price">价格<span>￥14.9</span></p>
        <p class="store-num">销量：<span>800件</span></p>
        <div class="update-num">
            <div>
                <input type="text" value="1" id="goodsNum"/>
                <span class="add"></span>
                <span class="reduce"></span>
            </div>
            <a href="#" id="addCart" title="添加购物车"><i class="fa fa-shopping-cart"></i>添加购物车</a><span id="tips"><i class="fa fa-check-circle-o"></i>添加成功</span>
        </div>
    </div>
    <!--店家承诺-->
    <div class="promise">
        <h3><i class="fa fa-handshake-o"></i>爱购承诺</h3>
        <p>爱购平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！
            注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若没有及时更新，请大家谅解！</p>
    </div>
</div>
<!--商品介绍-->
<div class="w1230 clear-float">
    <!--商品推荐-->
    <div class="recommend goods-show">
        <h3>看了本商品的用户最终购买了</h3>
        <ul class="clear-float">
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global01.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">马来西亚进口 茱蒂丝（Julie's) 美旋律什锦饼干658.8g（新老包装随机发货）</p>
                <span class="g-price">￥39.00</span>
                <span class="g-num">销量:800</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global02.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">新西兰原装进口牛奶 安佳Anchor全脂牛奶UHT纯牛奶250ml*24 整箱装</p>
                <span class="g-price">￥89.00</span>
                <span class="g-num">销量:800</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global03.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">葡韵手信 澳门特产 休闲零食 传统糕点小吃 千层酥150g</p>
                <span class="g-price">￥23.00</span>
                <span class="g-num">销量:800</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global04.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">日本进口 白色恋人 北海道 白巧克力夹心饼干12枚 休闲零食 礼盒132g</p>
                <span class="g-price">￥89.00</span>
                <span class="g-num">销量:800</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global05.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">澳大利亚 进口奶粉 德运 （Devondale）调制乳粉（全脂）成人奶粉 1kg 袋装</p>
                <span class="g-price">￥69.00</span>
                <span class="g-num">销量:800</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global06.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装</p>
                <span class="g-price">￥99.00</span>
                <span class="g-num">销量:800</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global07.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">Ferrero Rocher费列罗榛果威化糖果巧克力礼盒48粒600g</p>
                <span class="g-price">￥129.00</span>
                <span class="g-num">销量:800</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global08.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">新西兰原装进口牛奶 安佳Anchor全脂牛奶UHT纯牛奶1L*12 整箱装</p>
                <span class="g-price">￥139.00</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global09.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">沙特阿拉伯进口 麦维他（Mcvitie's）全麦酥性消化饼干纤滋棒原味180g</p>
                <span class="g-price">￥17.90</span>
                <span class="g-num">销量:800</span>
            </a></li>
            <li><a href="#">
                <div class="g-img"><img src="static/img/classify/classify-global10.jpg" alt="" width="230px" height="230px"/></div>
                <p class="g-title">泰国进口 家乐氏（Kellogg’s）谷维滋 即食谷物 进口冲调 营养谷物早餐310g</p>
                <span class="g-price">￥29.90</span>
                <span class="g-num">销量:800</span>
            </a></li>
        </ul>
    </div>
    <!--商品介绍-->
    <div class="goods-des">
        <h3 class="goods-tro">商品介绍</h3>
        <div class="goods-info">
            <ul>
                <li><img src="static/img/detail/detail01.jpg" alt="" /></li>
                <li><img src="static/img/detail/detail02.jpg" alt="" /></li>
                <li><img src="static/img/detail/detail03.jpg" alt="" /></li>
                <li><img src="static/img/detail/detail04.jpg" alt="" /></li>
                <li><img src="static/img/detail/detail05.jpg" alt="" /></li>
                <li><img src="static/img/detail/detail06.jpg" alt="" /></li>
                <li><img src="static/img/detail/detail07.jpg" alt="" /></li>
                <li><img src="static/img/detail/detail08.jpg" alt="" /></li>
                <li><img src="static/img/detail/detail09.jpg" alt="" /></li>
            </ul>
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
