/*==========登录方式的切换=============*/
//登录切换元素的父元素
var regTop=document.getElementById('reg-top');
//获取普通登录元素
var normal=document.getElementById('normal');
//获取无密码登录元素
var nopw=document.getElementById('nopw');

//获取普通登录对应的div
var rc=document.getElementById('rc');
//获取无密码登录对应的div
var lc=document.getElementById('lc');

//登录状态标识位
var rcFlag=true;
var lcFlag=false;

$(document).ready(function () {
    rc.style.display="block";
    lc.style.display="none";
    regTop.style.display="block";
    nopw.style.borderBottom="none";
    normal.style.borderBottom="2px solid #ff1877";
});

//实现登录方式的切换
normal.onclick=function(){
	rc.style.display="block";
	lc.style.display="none";
	regTop.style.display="block";
	nopw.style.borderBottom="none";
	normal.style.borderBottom="2px solid #ff1877";
	rcFlag=true;
	lcFlag=false;

}

nopw.onclick=function(){
	rc.style.display="none";
	lc.style.display="block";
	regTop.style.display="block";
	nopw.style.borderBottom="2px solid #ff1877";
	normal.style.borderBottom="none";
	rcFlag=false;
	lcFlag=true;
}

/*=========普通登录表单验证============*/
//获取提示框元素
var rcInnerNum=document.getElementById('rc-inner-num');
var rcinnerText=rcInnerNum.getElementsByTagName('span')[0];


var rcInnerVirity=document.getElementById('rc-inner-virity');
var rcInnerVirityText=rcInnerVirity.getElementsByTagName('span')[0];

//用户名输入框
var inputUser=document.getElementById('login_username');
//alert(inputPhone);
//密码输入框
var inputPassword=document.getElementById('login_password');
//获取登录按钮
var loginBtn=document.getElementById('login-btn');


//用户名输入正确标识位
var nFlag=false;
inputUser.onblur=function(){
	//console.log(this.value);
	if(this.value==""){
		rcInnerNum.style.display="block";
		rcInnerVirity.style.display="none";
		$('#rc-inner-num > span').text('请输入用户名');
		return;
	}
		var value=$(this).val();
		//console.log(value);
		$.post('/checkUser',{username:value},function(data){
			//console.log(data);
			if(data=='false'){
				$('#rc-inner-num').show().text();
				$('#rc-inner-virity').hide();
				$('#rc-inner-num > span').text('用户名不存在，请重新输入！');
			}else{
				$('.success').show();
				nFlag=true;
			}
		});
		return;
}

inputUser.onfocus=function(){
	rcInnerNum.style.display="none";
	$('.success').hide();
	$('#rc-innerError').eq(0).hide();
}

//密码输入框验证
var passFlag=false;
inputPassword.onblur=function(){
	if(this.value==""){
		if(nFlag){
			rcInnerVirity.style.display="block";
			rcInnerNum.style.display="none";
			rcInnerVirityText.innerText="请输入密码";
		}
		return;
	}
	var reg=/((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{8,16}/i;  
	//*密码必须为8-16位<br/>*必须有字母、数字或特殊字符其中两种
	if(!reg.test(this.value)){
		rcInnerVirity.style.display="block";
		rcInnerVirityText.innerText="密码为8-16位的字母或数字或特殊字符的结合";
		rcInnerNum.style.display="none";
	}else{
		passFlag=true;
		return;
	}
}

inputPassword.onfocus=function(){
	rcInnerVirity.style.display="none";
	$('#rc-innerError').eq(0).hide();
}

//按钮验证
loginBtn.onclick=function(e){
	if(inputUser.value==""){
		rcInnerNum.style.display="block";
		rcinnerText.innerText="请输入用户名";
		rcInnerVirity.style.display="none";
		return;
	}
	if(inputPassword.value==""){
		if(nFlag){
			rcInnerVirity.style.display="block";
			rcInnerVirityText.innerText="请输入密码";
			rcInnerNum.style.display="none";
		}
		return;
	}
	if(passFlag&&nFlag){
		var user = inputUser.value;
		var pass = inputPassword.value;
		/*console.log(phone);
		console.log(pass);*/
		$.post('/login',{UserName:user,Password:pass},function(data){
			if(data=='wrong'){
				$('#rc-innerError').eq(0).show();
			}else{
				window.location.href='/';
			}
		});
	}
}


/*=========注册=============*/
//获取手机号码提示框元素
var innerNum=document.getElementById('inner-num');
var innerNumText=innerNum.getElementsByTagName('span')[0];
//获取密码提示框元素
var innerVirity=document.getElementById('inner-virity');
var innerVirityText=innerVirity.getElementsByTagName('span')[0];


//获取手机号码输入框
var username=document.getElementById('register_username');
//console.log(noPhoneNum);
//获取密码输入框
var password=document.getElementById('register_password');
//登录按钮
var loginBtn1=document.getElementById('login-btn1');

//用户名输入正确标识
var uflage = false;
username.onblur=function(){
    //console.log(this.value);
    if(this.value==""){
        innerNum.style.display="block";
        innerVirity.style.display="none";
        $('#inner-num > span').text('请输入用户名');
        return;
    }
    var value=$(this).val();
    //console.log(value);
    $.post('/checkUser',{username:value},function(data){
        //console.log(data);
        if(data=='true'){
            $('#inner-num').show().text();
            $('#inner-virity').hide();
            $('#inner-num > span').text('用户名已存在，请重新输入！');
        }else{
            $('.success2').show();
            uflage=true;
        }
    });
    return;
}

username.onfocus = function () {
    innerNum.style.display="none";
};

//密码输入框验证
var pflage=false;
password.onblur=function(){
    if(this.value==""){
        if(uflage){
            innerVirity.style.display="block";
            innerNum.style.display="none";
            innerVirityText.innerText="请输入密码";
        }
        return;
    }
    var reg=/((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{8,16}/i;
    //*密码必须为8-16位<br/>*必须有字母、数字或特殊字符其中两种
    if(!reg.test(this.value)){
        innerVirity.style.display="block";
        innerVirityText.innerText="密码为8-16位的字母或数字或特殊字符的结合";
        innerNum.style.display="none";
    }else{
        pflage=true;
        return;
    }
}

//登录按钮验证
loginBtn1.onclick=function(){
	if(username.value==""){
		innerNum.style.display="block";
		innerNumText.innerText="请输入用户名";
		innerVirity.style.display="none";
		return;
	}
	if(password.value==""){
		if(npnFlag){
			innerVirity.style.display="block";
			innerVirityText.innerText="请输入密码";
			innerNum.style.display="none";
		}
		return;
	}
	if(uflage&&pflage){
		//数据提交，及登录跳转
        var user = username.value;
        var pass = password.value;
		/*console.log(phone);
		 console.log(pass);*/
        $.post('/register',{username:user,password:pass},function(data){
            if (data == 'success'){
                window.location.href='/';
			}
        });
	}

}

