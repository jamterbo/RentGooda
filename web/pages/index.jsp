<%--
  Created by IntelliJ IDEA.
  User: LingHanchen
  Date: 17/5/7
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="RentGoods.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="RentGoods.Goods" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="../pages/img/favicon.png">

    <!-- All css files are included here. -->
    <!-- Bootstrap framework main css -->
    <link rel="stylesheet" href="../pages/css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="../pages/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="../pages/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="../pages/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="../pages/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="../pages/css/custom.css">

    <!-- Modernizr JS -->
    <script src="../pages/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<div><jsp:include page="nvi.jsp"/></div>
<!-- slider-container start -->
<div class="slider-container">
    <!-- Slider Image -->
    <div id="mainSlider" class="nivoSlider slider-image">
        <img src="../pages/img/slider/1.jpg" alt="" title="#htmlcaption1"></div>
    <!-- Slider Caption 1 -->
    <div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
        <div class="container">
            <div class="slide1-text">
                <div class="middle-text">
                    <div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
                        <h2>A BRAND</h2>
                    </div>
                    <div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
                        <h2>NEW ARRIVALS</h2>
                    </div>
                    <div class="cap-text wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.3s">
                        Fascinating outdoor lounge chair with wooden chairs for outdoor ideas with outdoor chaise lounge
                        chair.
                    </div>
                    <div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s" data-wow-delay=".5s">
                        <a href="#">Shopping</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Slider Caption 2 -->
    <div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
        <div class="container">
            <div class="slide1-text">
                <div class="middle-text">
                    <div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
                        <h2>A BRAND</h2>
                    </div>
                    <div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
                        <h2>NEW ARRIVALS</h2>
                    </div>
                    <div class="cap-text wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.3s">
                        Fascinating outdoor lounge chair with wooden chairs for outdoor ideas with outdoor chaise lounge
                        chair.
                    </div>
                    <div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s" data-wow-delay=".5s">
                        <a href="#">Shopping</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider-container end -->
<!-- banner-area start -->
<div class="banner-area pt-70">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="single-banner"></div>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="single-banner"></div>
            </div>
        </div>
    </div>
</div>
<!-- banner-area end -->
<!-- new-arrival-area start -->
<div class="new-arrival-area pt-100">
    <div class="container">
        <div class="row">
            <div class="section-title text-center mb-20">
                <h2>分类</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="product-tab">
                    <!-- Nav tabs -->
                    <ul class="custom-tab text-center mb-40">
                        <li class="active"><a href="#home" data-toggle="tab">书籍</a></li>
                        <li><a href="#profile" data-toggle="tab"> 运动</a></li>
                        <li><a href="#messages" data-toggle="tab">科技</a></li>
                        <li><a href="#settings" data-toggle="tab"> Sale</a></li>
                        <li><a href="#new" data-toggle="tab"> What's New</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="row">
                        <div class="tab-content">
                            <div class="tab-pane active" id="home">
                                <div class="product-carousel">
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/12.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/11.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/3.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/1.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/4.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/11.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/5.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/10.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/5.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/6.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/7.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/8.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="profile">
                                <div class="product-carousel">
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/12.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/11.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/10.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/1.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/8.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/8.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/7.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/6.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/5.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/2.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/2.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/1.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/8.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="messages">
                                <div class="product-carousel">
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/4.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/11.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/12.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/2.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/3.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/1.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/5.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/10.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/5.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/6.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/7.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/8.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="settings">
                                <div class="product-carousel">
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/6.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/5.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/2.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/2.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/11.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/12.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/10.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/5.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/6.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/7.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/8.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="new">
                                <div class="product-carousel">
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/2.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/10.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/3.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/4.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/10.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/12.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/12.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/9.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/7.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper mb-40 mrg-nn-xs">
                                            <div class="product-img">
                                                <a href="#"><img src="../pages/img/product/8.jpg" alt=""/></a>
                                                <span class="new-label">New</span>
                                                <div class="product-action">
                                                    <a href="#"><i class="pe-7s-cart"></i></a>
                                                    <a href="#"><i class="pe-7s-like"></i></a>
                                                    <a href="#"><i class="pe-7s-folder"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#productModal"><i
                                                            class="pe-7s-look"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="pro-title">
                                                    <h3><a href="product-details.html">Cras Neque Metus</a></h3>
                                                </div>
                                                <div class="price-reviews">
                                                    <div class="price-box">
                                                        <span class="price product-price">$262.00</span>
                                                        <span class="old-price product-price">$262.00</span>
                                                    </div>
                                                    <div class="pro-rating">
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                        <a href="#"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- new-arrival-area end -->
<!-- newsletter-area start --><!-- best-sell-area end -->
<!-- latest-blog-area start -->
<div class="latest-blog-area ptb-60"></div>
<!-- latest-blog-area end -->
<!-- brand-area start -->
<div class="brand-area">
    <div class="container">
        <div class="brand-sep ptb-50">
            <div class="row">
                <div class="brand-active">
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="../pages/img/brand/1.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="../pages/img/brand/2.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="../pages/img/brand/3.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="../pages/img/brand/4.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="../pages/img/brand/5.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="../pages/img/brand/1.jpg" alt=""/></a>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="single-brand">
                            <a href="#"><img src="../pages/img/brand/2.jpg" alt=""/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- brand-area end -->
<!-- service-area start -->
<div class="service-area pt-70 pb-40 gray-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="single-service mb-30">
                    <div class="service-icon">
                        <i class="pe-7s-world"></i>
                    </div>
                    <div class="service-title">
                        <h3>FREE SHIPPING</h3>
                        <p>Free shipping on all UK orders</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service mb-30">
                    <div class="service-icon">
                        <i class="pe-7s-refresh"></i>
                    </div>
                    <div class="service-title">
                        <h3>FREE EXCHANGE</h3>
                        <p>30 days return on all items</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service mb-30 sm-mrg">
                    <div class="service-icon">
                        <i class="pe-7s-headphones"></i>
                    </div>
                    <div class="service-title">
                        <h3>PREMIUM SUPPORT</h3>
                        <p>We support online 24 hours a day</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service mb-30 xs-mrg sm-mrg">
                    <div class="service-icon">
                        <i class="pe-7s-gift"></i>
                    </div>
                    <div class="service-title">
                        <h3>BLACK FRIDAY</h3>
                        <p>Shocking discount on every friday</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- service-area end -->


<div><jsp:include page="footer.jsp"/></div>
<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">x</span></button>
            </div>
            <div class="modal-body">
                <div class="modal-img">
                    <a href="shop.html"><img src="../pages/img/product/1.jpg" alt=""/></a>
                </div>
                <div class="modal-pro-content">
                    <h3><a href="#">Phasellus Vel Hendrerit</a></h3>
                    <div class="pro-rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <span>(2 customer reviews)</span>
                    <div class="price">
                        <span>$70.00</span>
                        <span class="old">$80.11</span>
                    </div>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                        Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>
                    <form action="#">
                        <input type="number" value="1"/>
                        <button>Add to cart</button>
                    </form>
                    <div class="product_meta">
                        <span class="posted_in">Categories: <a rel="tag" href="#">Albums</a>, <a rel="tag" href="#">Music</a></span>
                        <span class="tagged_as">Tags: <a rel="tag" href="#">Albums</a>, <a rel="tag" href="#">Music</a></span>
                    </div>
                    <div class="social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->

<!-- jquery latest version -->
<script src="../pages/js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="../pages/js/bootstrap.min.js"></script>
<!-- ajax-mail js -->
<script src="../pages/js/ajax-mail.js"></script>
<!-- owl.carousel js -->
<script src="../pages/js/owl.carousel.min.js"></script>
<!-- jquery.nivo.slider js -->
<script src="../pages/js/jquery.nivo.slider.pack.js"></script>
<!-- All js plugins included in this file. -->
<script src="../pages/js/plugins.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="../pages/js/main.js"></script>
</body>
</html>
