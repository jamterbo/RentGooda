<%--
  Created by IntelliJ IDEA.
  User: LingHanchen
  Date: 17/5/11
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="../pages/css/styles.css">
<script type="application/javascript" src="../pages/js/vendor/jquery-1.12.0.min.js"></script>
<script type="application/javascript">
    var chat = {};
    var record = {};
    chat.socket = null;
    chat.name = 'root';
    document.onload = function () {
        if (true){
            function connection() {
                if ('Websocket' in window){
                    chat.socket = new WebSocket("ws://"+window.location.host+"/chat");
                }else if ('MozWebsocket' in window){
                    chat.socket = new MozWebsocket("wss://"+window.location.host+"/chat");
                }else {
                    alert('Error: WebSocket is not supported by this browser');
                }
                chat.socket.onopen = function () {
                    chat.socket.send('History');
                }
                chat.socket.onmessage = function (message) {
                    if(Array.isArray(message)){
                        for (var i=0;i<message.length;i++){
                            var withWho = $('#'+message[i].fromWho);
                            if(withWho.length<=0){
                                $('.sidebar-content').append("<div class='contact'>\n" +
                                    "<img src=\""+message[i]['head']+"\" class='contact__photo' />\n "+
                                    "<span class='contact__name'>"+message[i]['nickname']+"</span>\n"+
                                    "<span class='contact__photo'></span> \n"+"</div>");
                            }
                            withWho = "<div class='chat__messages'><div class='chat__msgRow'><div class='chat__message notMine'>"
                            +message[i].mainInfo;

                        }
                    }else {
                        record[message.fromWho] =
                    }
                }
                chat.socket.onclose = function () {
                    
                }
                chat.socket.onerror = function (error) {
                    
                }
                chat.input = function (event) {
                    
                }
            }
        }else {

        }
    };
</script>
<div class="chatPart">
<div class="sidebar-content">
    <div class="contact" id="test">
        <img src="img/1.png" alt="" class="contact__photo" />
        <span class="contact__name">Ethan Hawke</span>
        <span class="contact__status online"></span>
    </div>
</div>
<div class="chat">
    <span class="chat__back"></span>
    <span class="chat__status">status</span>
    <div class="chat__person">
        <span class="chat__online active"></span>
        <span class="chat__name">Huehue Huehue</span>
    </div>
    <div class="chat__messages">
        <div class="chat__msgRow">
            <div class="chat__message mine">Such SVG, much Javascript, very CSS!</div>
        </div>
        <div class="chat__msgRow">
            <div class="chat__message notMine">Wow!</div>
        </div>
        <div class="chat__msgRow">
            <div class="chat__message notMine">Very elastic! Such easings!</div>
        </div>
        <div class="chat__msgRow">
            <div class="chat__message mine">

            </div>
        </div>
    </div>
    <input type="text" class="chat__input" placeholder="Your message" />
</div>
</div>

