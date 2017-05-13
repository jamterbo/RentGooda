<%--
  Created by IntelliJ IDEA.
  User: LingHanchen
  Date: 17/5/13
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="../pages/js/vendor/jquery-1.12.0.min.js"></script>
<body>
old password:<input id="old_password" type="password"><br>
new password:<input id="new_password" type="password"><br>
<input type="button" onclick="changePassword()" value="提交">
<script type="text/javascript">
    function changePassword() {
        var oldPassword = $('#old_password').val();
        var newPassword = $('#new_password').val();
        $.ajax({
            url:'/changePassword',
            method:'POST',
            data:{
                'old':oldPassword,
                'new':newPassword
            }
        }).done(function (message) {
            alert(message);
        }).fail(function () {
            alert("failed");
        });
    }
</script>
</body>
</html>
