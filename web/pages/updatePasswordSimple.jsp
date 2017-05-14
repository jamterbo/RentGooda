<%--
  Created by IntelliJ IDEA.
  User: LingHanchen
  Date: 17/5/13
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    .fixpass{
        width: 650px;
        height: 420px;
        background-color: #f5f5f6;
    }
    input{
        width: 300px;
        height: 40px;
        border: solid 1px gold;
        background-color: white;
    }
    .rtable{
        margin-left: 15px;
    }

    .fixbutton{
        width: 64px;
        height: 32px;
        background-color: gold;
    }
</style>
<script type="text/javascript" src="../pages/js/vendor/jquery-1.12.0.min.js"></script>
<body>
<div class="fixpass">
    <div class="rtable">
        <table style="border-collapse:separate; border-spacing:10px 20px;">
            <tr>
                <td style="float: right">当前密码:</td>
                <td><input id="old_password" type="password"></td>
            </tr>
            <tr>
                <td style="float: right">新密码:</td>
                <td><input id="new_password" type="password"></td>
            </tr>
            <tr>
                <td style="float: right">确认密码:</td>
                <td><input id="conform_password" type="password"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" onclick="changePassword()" value="保存" class="fixbutton">
                </td>
            </tr>
        </table>
    </div>
</div>
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
