<%--
  物品详情页
  Created by IntelliJ IDEA.
  User: haoyun
  Date: 2017/4/21
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>物品详情</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

    <!-- All css files are included here. -->
    <!-- Bootstrap framework main css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<!--header start--!>
<div><jsp:include page="nvi.jsp"/></div>
<!--header end--!>


<!-- breadcrumb start -->
<div class="breadcrumb-area">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-home"></i></a></li>
            <li><a href="#"> Sofa</a></li>
            <li class="active">Laoreet Congue</li>
        </ol>
    </div>
</div>
<!-- breadcrumb end -->
<!-- shop-area start -->
<div class="shop-area">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-5">
                <div class="product-zoom">
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                            <div class="pro-large-img">
                                <img src="img/product/1.jpg" alt=""/>
                                <a class="popup-link" href="img/product/1.jpg">View larger <i class="fa fa-search-plus"
                                                                                              aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="tab-pane" id="profile">
                            <div class="pro-large-img">
                                <img src="img/product/2.jpg" alt=""/>
                                <a class="popup-link" href="img/product/2.jpg">View larger <i class="fa fa-search-plus"
                                                                                              aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="tab-pane" id="messages">
                            <div class="pro-large-img">
                                <img src="img/product/3.jpg" alt=""/>
                                <a class="popup-link" href="img/product/3.jpg">View larger <i class="fa fa-search-plus"
                                                                                              aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="tab-pane" id="settings">
                            <div class="pro-large-img">
                                <img src="img/product/4.jpg" alt=""/>
                                <a class="popup-link" href="img/product/4.jpg">View larger <i class="fa fa-search-plus"
                                                                                              aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="tab-pane" id="settings2">
                            <div class="pro-large-img">
                                <img src="img/product/5.jpg" alt=""/>
                                <a class="popup-link" href="img/product/5.jpg">View larger <i class="fa fa-search-plus"
                                                                                              aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="tab-pane" id="settings3">
                            <div class="pro-large-img">
                                <img src="img/product/6.jpg" alt=""/>
                                <a class="popup-link" href="img/product/6.jpg">View larger <i class="fa fa-search-plus"
                                                                                              aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- Nav tabs -->
                    <ul class="details-tab">
                        <li class="active"><a href="#home" data-toggle="tab"><img src="img/product/1.jpg" alt=""/></a>
                        </li>
                        <li><a href="#profile" data-toggle="tab"><img src="img/product/2.jpg" alt=""/></a></li>
                        <li><a href="#messages" data-toggle="tab"><img src="img/product/3.jpg" alt=""/></a></li>
                        <li><a href="#settings" data-toggle="tab"><img src="img/product/4.jpg" alt=""/></a></li>
                        <li><a href="#settings2" data-toggle="tab"><img src="img/product/5.jpg" alt=""/></a></li>
                        <li><a href="#settings3" data-toggle="tab"><img src="img/product/6.jpg" alt=""/></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-7">
                <div class="product-details">
                    <h2 class="pro-d-title">自行车</h2>
                    <div class="pro-ref container">
                        <div class="col-2">
                            <p>
                                <label>成色: </label>
                                <span>全新</span>
                            </p>
                            <p>
                                <label>价值: </label>
                                <span>998</span>
                            </p>
                            <p>
                                <label>押金: </label>
                                <span>99</span>
                            </p>
                        </div>
                        <div class="col-2">
                            <p>
                                <label>数量: </label>
                                <span>2</span>
                            </p>
                            <p>
                                <label>出租方: </label>
                                <span>王思聪</span>
                            </p>
                            <p>
                                <label>地址: </label>
                                <span>东北大学</span>
                            </p>
                        </div>

                    </div>
                    <div class="price-box">
                        <p>租金<span class="price product-price"> ￥262.00</span></p>

                    </div>
                    <div class="short-desc">
                        <p>Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable
                            fit. Accessorize with a straw hat and you're ready for summer!</p>
                    </div>
                    <div class="box-quantity">
                        <form action="#">
                            <label>数量</label>
                            <input type="number" value="1"/>
                            <button>添加到心愿单</button>
                        </form>
                    </div>
                    <br>
                    <div class="">
                        <form action="#" id="time">
                            <label>租赁天数</label>
                            <input type="text" placeholder="请输入租赁天数"/>
                        </form>
                    </div>

                    <br/>
                    <button type="button" class="btn btn-default">去租</button>
                    <button type="button" class="btn btn-default">联系主人</button>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- shop-area end -->
<!-- pro-info-area start -->
<div class="pro-info-area ptb-80">
    <div class="container">
        <div class="pro-info-box">
            <!-- Nav tabs -->
            <ul class="pro-info-tab" role="tablist">
                <li class="active"><a href="#home3" data-toggle="tab">物品介绍</a></li>
                <li><a href="#profile3" data-toggle="tab">参数</a></li>
                <li><a href="#messages3" data-toggle="tab">评论</a></li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="home3">
                    <div class="pro-desc">
                        <p>我是商品介绍我是商品介绍我是商品介绍我是商品介绍我是商品介绍我是商品介绍我是商品介绍我是商品介绍我是商品介绍我是商品介绍</p>
                    </div>
                </div>
                <div class="tab-pane" id="profile3">
                    <div class="pro-desc">
                        <table class="table-data-sheet">
                            <tbody>
                            <tr class="odd">
                                <td>Compositions</td>
                                <td>Cotton</td>
                            </tr>
                            <tr class="even">
                                <td>Styles</td>
                                <td>Casual</td>
                            </tr>
                            <tr class="odd">
                                <td>Properties</td>
                                <td>Short Sleeve</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane" id="messages3">
                    <div class="pro-desc">
                        <a href="#">第一条评论。。。。。。</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- pro-info-area end -->




<!-- footer start -->
<div><jsp:include page="footer.jsp"/></div>
<!-- footer end -->
<script src="./js/login.js"></script>

<!-- jquery latest version -->
<script src="js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="js/bootstrap.min.js"></script>
<!-- owl.carousel js -->
<script src="js/owl.carousel.min.js"></script>
<!-- owl.carousel js -->
<script src="js/jquery-ui.min.js"></script>
<!-- jquery.nivo.slider js -->
<script src="js/jquery.nivo.slider.pack.js"></script>
<!-- All js plugins included in this file. -->
<script src="js/plugins.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="js/main.js"></script>
</body>
</html>
