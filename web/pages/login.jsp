<%--
有关的css：signin.css
有关的js：login.js  里面有一些验证，，需要以后改一下
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>登录</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

    <!-- All css files are included here. -->
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
    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>

<!-- header start -->
<header class="header-pos blg">
    <div class="header-area header-middle">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 col-sm-3 col-xs-12">
                    <div class="logo">
                        <a href="index.html"><img src="img/logo/logo.jpg" alt=""/></a>
                    </div>
                </div>
                <div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">
                    <div class="main-menu display-inline hidden-sm hidden-xs">
                        <nav>
                            <ul>
                                <li><a href="index.html">主页</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="search-block-top display-inline">
                        <div class="icon-search"></div>
                        <div class="toogle-content">
                            <form action="#" id="searchbox">
                                <input type="text" placeholder="Search"/>
                                <button class="button-search"></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mobile-menu-area visible-sm visible-xs">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="mobile-menu">
                        <nav id="mobile-menu-active">
                            <ul>
                                <li><a href="index.html">主页</a></li>
                                <li><a href="shop.html">分类</a></li>
                                <li><a href="#">发布出租</a></li>
                                <li><a href="#">个人中心</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="space-custom"></div>
<!-- header end -->
<div class="shop-area wrap">

    <div class="register-wrap" id="register-wrap">
        <div class="pic" id="pic">
            <img src="./img/blog/1.jpg" alt="该链接已失效"/>
        </div>
        <div class="register"id="register">
            <div class="register-top" id="reg-top">
                <h2 class="normal"id="normal">普通登录</h2>
                <h2 class="nopassword"id="nopw">注册</h2>
                <a  id="qrcode"href="#"></a>
            </div>

            <!--普通登录-->
            <div class="register-con" id="rc">
                <form action="/login">
                    <ul>
                        <li id="rc-inner-num">
                            <i></i>
                            <span>用户名</span>
                        </li>
                        <li id="rc-inner-virity">
                            <i></i>
                            <span>请输入密码</span>
                        </li>
                        <li id="rc-innerError"style="width:300px;
								height:32px;
								padding:0 6px;
								color:#ff1877;
								border:1px solid #ffd797;
								display:none;">
                            <i style="display:inline-block;
									float:left;
									width:20px;
									height:20px;
									margin:6px 10px;
									border:none;
									background:url(./images/bz_16x16.png) no-repeat 0 0;"></i>
                            <span style="color:#ff1877;
								display:inline-block;
								float:left;
								line-height:26px;">您输入的用户名或密码不正确</span>
                        </li>
                        <br>
                        <li class="form-group">
                            <input type="text"name="UserName"class="form-control"placeholder="用户名"/>
                            <span class="fa fa-check success" style="display:none;color:green;position:relative;left:-25px;top:5px;"></span>

                        </li>
                        <br>
                        <li class="form-group">
                            <input type="password"name="Password"id="pass"class="form-control"placeholder="密码"/>
                        </li>
                        <li class="read">
                            <input type="checkbox" class="ck" name="check"value="1"checked="checked"/>
                            <b>记住密码</b>
                        </li>
                        <li>
                            <button class="submit"type="submit"id="login-btn"style="border-radius:5px;">立即登录</button>
                        </li>
                    </ul>
                </form>
            </div>
            <!--手机无密码登录-->
            <div class="login-con" id="lc">
                <form action="#">
                    <ul>
                        <li id="inner-num">
                            <i></i>
                            <span>请输入用户名</span>
                        </li>
                        <li id="inner-virity">
                            <i></i>
                            <span>请输入验证码</span>
                        </li>
                        <br>
                        <li class="password form-group">
                            <input type="text"name="phone-num"class="form-control"placeholder="用户名"/>
                        </li>
                        <br>
                        <li class="password form-group">
                            <input type="password"name="password"id="pass"class="form-control"placeholder="密码"/>

                        </li>
                        <br>
                        <li>
                            <button class="submit"type="submit"id="login-btn1"style="border-radius:5px;">注册</button>
                        </li>


                    </ul>
                </form>
            </div>
            <!-- 扫码登录 -->
            <div class="saoma" id="sm">
                <div class="screen-tu"id="screen"></div>
                <div class="saoyisao"></div>
            </div>
        </div>
    </div>

</div>


</div>
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
                        <h3>闲置物品共享</h3>
                        <p>让闲置物品重新焕发生机</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service mb-30 sm-mrg">
                    <div class="service-icon">
                        <i class="pe-7s-headphones"></i>
                    </div>
                    <div class="service-title">
                        <h3>以物会友</h3>
                        <p>通过物品的租借，助你结交更多朋友！</p>
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
