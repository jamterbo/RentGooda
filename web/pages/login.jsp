<%--
  Created by IntelliJ IDEA.
  User: haoyun
  Date: 2017/4/21
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录rentgoods</title>
</head>
<body>
<form action="/usermanage" method="post">
    <input type="hidden" name="method" value="signin">
    UserName:<input name="UserName" type="text">
    Password:<input type="password" name="Password">
    <input type="submit" value="submit">
</form>
</body>
</html>
