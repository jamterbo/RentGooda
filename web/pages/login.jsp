<%--
有关的css：signin.css
有关的js：login.js  里面有一些验证，，需要以后改一下
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>登录</title>
    <meta name="description" content="">
    <!-- All css files are included here. -->
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="../pages/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="../pages/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <%--<link rel="stylesheet" href="../pages/css/style.css">--%>
    <!-- Responsive css -->
    <link rel="stylesheet" href="../pages/css/responsive.css">
    <!-- User style -->
    <%--<link rel="stylesheet" href="../pages/css/custom.css">--%>
    <!-- Bootstrap core CSS -->
    <link href="../pages/css/bootstrap.min.css" rel="stylesheet">
    <link href="../pages/css/login.css" rel="stylesheet">

</head>
<div class="container">
    <jsp:include page="nvi.jsp"/>
<div class="shop-area wrap">
    <div class="register-wrap" id="register-wrap">
        <div class="pic" id="pic">
            <img src="../pages/img/blog/1.jpg" alt="该链接已失效"/>
        </div>
        <div class="register"id="register">
            <div class="register-top" id="reg-top">
                <h2 class="normal"id="normal">登录</h2>
                <h2 class="nopassword"id="nopw">注册</h2>
            </div>

            <!--普通登录-->
            <div class="register-con" id="rc">
                <form action="/login">
                    <ul>
                        <li id="rc-inner-num">
                            <i style="background: url(/pages/img/icons/bz_16x16.png) no-repeat 0 0"></i>
                            <span>用户名</span>
                        </li>
                        <li id="rc-inner-virity">
                            <i style="background: url(/pages/img/icons/bz_16x16.png) no-repeat 0 0"></i>
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
									background:url(/pages/img/icons/bz_16x16.png) no-repeat 0 0;"></i>
                            <span style="color:#ff1877;
								display:inline-block;
								float:left;
								line-height:26px;">您输入的用户名或密码不正确</span>
                        </li>
                        <br>
                        <li class="form-group">
                            <input type="text"name="UserName"class="form-control" id="login_username" placeholder="用户名"/>
                            <span class="fa fa-check success" style="display:none;color:green;position:relative;left:-25px;top:5px;"></span>

                        </li>
                        <br>
                        <li class="form-group">
                            <input type="password"name="Password"id="login_password"class="form-control"placeholder="密码"/>
                        </li>
                        <li>
                            <button class="submit"type="button"id="login-btn"style="border-radius:5px;">立即登录</button>
                        </li>
                    </ul>
                </form>
            </div>
            <!--注册-->
            <div class="register-con" id="lc">
                <form action="#">
                    <ul>
                        <li id="inner-num">
                            <i style="background: url(/pages/img/icons/bz_16x16.png) no-repeat 0 0"></i>
                            <span>请输入用户名</span>
                        </li>
                        <li id="inner-virity">
                            <i style="background: url(/pages/img/icons/bz_16x16.png) no-repeat 0 0"></i>
                            <span>请输入验证码</span>
                        </li>
                        <br>
                        <li class="password form-group">
                            <input type="text"name="username"class="form-control" id="register_username" placeholder="用户名"/>
                            <span class="fa fa-check success2" style="display:none;color:green;position:relative;left:-25px;top:5px;"></span>
                        </li>
                        <br>
                        <li class="password form-group">
                            <input type="password"name="password"id="register_password"class="form-control"placeholder="密码"/>
                        </li>
                        <small>&nbsp;&nbsp;&nbsp;密码必须为8-16位<br/>&nbsp;&nbsp;&nbsp;必须有字母、数字或特殊字符其中两种</small>
                        <br>
                        <br>
                        <li>
                            <button class="submit"type="button"id="login-btn1"style="border-radius:5px;">注册</button>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>

</div>



</div>
<!-- footer start -->
<div><jsp:include page="footer.jsp"/></div>
<!-- footer end -->
<!-- jquery latest version -->
<script src="../pages/js/vendor/jquery-1.12.0.min.js"></script>
<script src="../pages/js/login.js"></script>
<script src="../pages/js/plugins.js"></script>
<script src="../pages/js/main.js"></script>
</body>
</html>
