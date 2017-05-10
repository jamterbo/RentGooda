<%--
  添加商品-li
  Created by IntelliJ IDEA.
  User: li
  Date: 2017/4/26
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品</title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

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
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<style type="text/css">
    body{
        text-align: center;
    }
    #container{
        text-align: center;
        margin: auto auto;
        width: 650px;
        height: 500px;
    }
    table{
        border-collapse:separate;
        border-spacing:10px;
    }
    #submit{
        width: 80px;
        height: 32px;
        background-color: gold;
        border: solid gold;
        border-radius: 10px;
        color: black;
    }
    #area{
        width: 400px;
        height: 220px;
        border-radius: 10px;
    }
    .content{
        border-radius: 10px;
    }


</style>
<body>
<div><jsp:include page="nvi.jsp"/></div>

<div class="shop-area" align="center">
    <form action="/addGoods" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>标题：</td>
                <td><input type="text" name="name" class="content"></td>
            </tr>
            <tr>
                <td>类型：</td>
                <td>
                    <select name="type" class="content">
                    <option>A</option>
                    <option>B</option>
                    <option>C</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>成色：</td>
                <td><input type="text" name="fineness" class="content"></td>
            </tr>
            <tr>
                <td>描述：</td>
                <td><textarea name="description" id="area"></textarea></td>
            </tr>
            <tr>
                <td>上传图片：</td>
                <td><input type="file" name="photo" style="border-radius: 10px;text-align: center"></td>
            </tr>
            <tr>
                <td>联系人：</td>
                <td><input type="text" name="owner" class="content"></td>
            </tr>
            <tr>
                <td>联系方式：</td>
                <td><input type="text" name="phone" class="content"></td>
            </tr>
            <tr>
                <td colspan="2" align="center" ><input type="submit" value="发布" id="submit"></td>
            </tr>

        </table>

    </form>
</div>
<div><jsp:include page="footer.jsp"/></div>
</body>
<!-- jquery latest version -->
<script src="../pages/js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="../pages/js/bootstrap.min.js"></script>
<!-- owl.carousel js -->
<script src="../pages/js/owl.carousel.min.js"></script>
<!-- owl.carousel js -->
<script src="../pages/js/jquery-ui.min.js"></script>
<!-- jquery.nivo.slider js -->
<script src="../pages/js/jquery.nivo.slider.pack.js"></script>
<!-- All js plugins included in this file. -->
<script src="../pages/js/plugins.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="../pages/js/main.js"></script>
</html>
