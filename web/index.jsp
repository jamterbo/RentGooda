<%--
  Created by IntelliJ IDEA.
  User: haoyun
  Date: 2017/4/21
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="User" %>
<html>
  <head>
    <title>首页</title>
  </head>

  <body>
  <%
    User user = (User)session.getAttribute("User");
  %>
  Hello,<%=user.getUserName()%>
  </body>
</html>
