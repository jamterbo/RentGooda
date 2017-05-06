<%--
  Created by IntelliJ IDEA.
  User: haoyun
  Date: 2017/4/21
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="RentGoods.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="RentGoods.Goods" %>
<html>
  <head>
    <title>首页</title>
  </head>

  <body>
  <%
    User user = (User)session.getAttribute("User");
    ArrayList<Goods> goods = (ArrayList<Goods>)request.getAttribute("goods");
  %>
  Hello,<%=user==null?"Visitor":user.getUserName()%>
  <%
    for (Goods good : goods){
        out.println("name:"+good.getName());
        for (String path : good.getPictures()){
            out.println("<img src=\".."+path+"\">");
        }
    }
  %>
  </body>
</html>
