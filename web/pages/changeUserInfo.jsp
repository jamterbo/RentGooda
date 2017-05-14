<%--

  Created by IntelliJ IDEA.
  User: haoyun
  Date: 2017/4/26
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../pages/js/vendor/jquery-1.12.0.min.js"></script>
</head>
<body>
昵称:<input type="text" id="nickname"><br>
学号:<input type="text" id="studentID"><br>
学校:<input type="text" id="school"><br>
手机号:<input type="text" id="telephone"><br>
Email:<input type="email" id="email"><br>
性别:<select id="sex"><option value="0">保密</option><option value="1">男</option><option value="2">女</option></select>
<input type="button" value="提交" onclick="changUserInfo()">
</body>
<script type="text/javascript">
    function changUserInfo() {
        var user = {};
        user.nickname = $('#nickname').val();
        user.studentID= $('#studentID').val();
        user.school = $('#school').val();
        user.telephone = $('#telephone').val();
        user.email = $('#email').val();
        user.sex = $('#sex').val();
        $.ajax({
            url:'/UserInfoManage',
            method:'POST',
            data:{
                'nickname':user.nickname,
                'studentid':user.studentID,
                'school':user.school,
                "telephone":user.telephone,
                'email':user.email,
                'sex':user.sex
            }
        }).done(function (message) {
            alert(message);
        }).fail(function () {
            alert("failed");
        });
    }
</script>
</html>
