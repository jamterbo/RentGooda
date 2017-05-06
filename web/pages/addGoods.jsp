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
</head>
<body>
<form action="/addGoods" method="post" enctype="multipart/form-data">
    <input type="hidden" value="addGoods" name="method">
    标题：<input type="text" name="name" ><br>
    类型：
    <select name="type">
        <option>A</option>
        <option>B</option>
        <option>C</option>
    </select><br>
    成色：<input type="text" name="fineness"><br>
    描述：<textarea name="description"></textarea><br>
    上传图片：<input type="file" name="photo" multiple/><br>
    联系人：<input type="text" name="owner"><br>
    联系方式：<input type="text" name="phone"><br>
    <input type="submit" >
</form>
</body>
</html>
