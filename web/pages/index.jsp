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
    <title>主页</title>
</head>

<body>
<%
    User user = (User)session.getAttribute("User");
    ArrayList<Goods> items = (ArrayList<Goods>)request.getAttribute("goods");
%>
<a href="/signin">Sign In</a><br>
<a href="/signup">Sign Up</a>
Hello,<%=user==null?"Visitor":user.getUserName()%><br>
<%
    for (Goods good : items){
        out.println("name:"+good.getName());
        for (String path : good.getPictures()){
            out.println("<img src=\".."+path+"\">");
        }
    }
%>
</body>
</html>
