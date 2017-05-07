<%@ page import="RentGoods.User" %><%--
    用户主页
  Created by IntelliJ IDEA.
  User: haoyun
  Date: 2017/4/21
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% User user = (User)session.getAttribute("User");%>
UserName:<%=user.getUserName()%>
<img src="..<%=user.getHead()%>" width="100px">
Student ID:<%=user.getStudentID()%>
School: <%=user.getSchool()%>
Telephone:<%=user.getTelephone()%>
Email:<%=user.getEmail()%>
Sex:<%=user.getSex()!=0?"男":"女"%>
</body>
</html>
