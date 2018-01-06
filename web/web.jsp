<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/27
  Time: 下午9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>FEC快递</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <style>
        #container{
            width:1300px;
        }
        #logo{
            height: 60px;
            border:0px black solid;
        }
        #Header{
            height:525px;
            border:1px #EEE solid;
        }
        #logo1{
            height: 100px;
            background: #FF2D2D;
        }
        #s1{
            height: 650px;
            border: 1px #EEE solid;
        }
        #login{
            width: 1300px;
            height:350px;
            border:1px #EEE solid;
        }
        #lside{
            width:1000px;
            height:600px;
            float: left;
        }
        #rside{
            width:330px;
            height: 330px;
            float: right;
            border:3px #EEE solid;
            float: center;
            background:yellow;
        }
        #rdside{
            width: 300px;
            height: 300px;
            float: bottom;
        }
        .from{
            float: right;
            margin-left: 30px;
            margin-top: 50px;
            margin-right: 50px;
            margin-bottom: 50px;
        }
        .font1{
            margin-left: 500px;
            margin-top: 50px;
        }
        .font2{
            margin-left: 495px;
        }
        .font3{
            margin-top: px;
        }
        a{ color:black; text-decoration:none;}
        a:hover{ color:red; text-decoration:underline;}
        a:active{ color:#30F;}
        #footer{
            width: 1300px;
            height:300px;
            border:1px #EEE solid;
            background-image: url("./images/head.png");
        }
        #frame1{
            position: absolute;
            width: 98.3%;
            height: 520px;
            overflow: hidden;
            border-radius:10px;
        }
        #photos1 img {
            float: left;
            width:50%;
            height:520px;
        }
        #photos1 {
            position: absolute;z-index:9px;
            width: calc(100% * 2);
        }
        .play1{
            animation: ma 5s ease-out infinite alternate;
        }
        @keyframes ma {
            0%,45% {        margin-left: 0px;       }
            55%,100% {       margin-left: -100%;    }
        }
        .num1{
            position:absolute;z-index:10;
            display:inline-block;
            right:10px;top:485px;
            border-radius:100%;
            background:#f00;
            width:25px;height:25px;
            line-height:25px;
            cursor:pointer;
            color:#fff;
            text-align:center;
            opacity:0.8;
        }
        .num1:hover{background:#00f;}
        .num1:hover,#photos1:hover{animation-play-state:paused;}
        .num1:nth-child(2){margin-right:30px}
        #a1:hover ~ #photos1{animation: ma1 .5s ease-out forwards;}
        #a2:hover ~ #photos1{animation: ma2 .5s ease-out forwards;}
        @keyframes ma1 {0%{margin-left:-100%;}100%{margin-left:-0px;} }
        @keyframes ma2 {100%{margin-left:-100%;}   }
    </style>
</head>
<body>
<div>

    <div id="container">
        <div id="logo">
            <div id="nav">
                <table width="1300" border="0" align="left" cellpadding="0" cellspacing="1">
                    <ul>
                        <tr>
                            <td width="250" height="30" align="right"><img src="./images/logo.png"></td>
                            <td width="150" height="30" align="center" bgcolor=""><a href="">首页</a></td>
                            <td width="150" height="30" align="center" bgcolor=""><a href="">发现</a></td>
                            <td width="150" height="30" align="center" bgcolor=""><a href="#s1">最新</a></td>
                            <td width="150" height="30" align="center" bgcolor=""><a href=""></a>活动</td>
                            <td width="250" height="30" align="center" bgcolor=""><a href="">美素</a></td>
                            <td width="550" height="30" align="center" bgcolor=""><a href="">美思</a></td>
                            <td width="450" height="30" align="top" bgcolor=""><a href="#footer">关于我们</a></td>
                            <td width="100" height="30" aligin="right" bgcolor="">    </td>
                            <td width="150" heigh="30" aligin="center" bgcolor=""><img src="./images/2.png" align="center">666666</td>
                            <td width="50" height="30" aligin="center" bgcolor=""> </td>
                            <td width="300" height="30" aligin="right" bgcolor=""><a href="#rside"><img src="./images/3.png" align="center">会员登录</td>
                            <td width="50" height="30" aligin="center" bgcolor="">|</td>
                            <td width="200" height="30" aligin="left" bgcolor=""><a href="">会员注册</a></td>
                            <td width="100" height="30" aligin="right" bgcolor="">    </td>
                            <td width="450" height="30" aligin="right" bgcolor=""><a href=""><img src="./images/4.png" align="center">返回旧版网站</a></td>
                    </ul>
                    </tr>
                </table>
            </div>
        </div>
        <div id="Header">
            <div id="frame1" >
                <a id="a1" class="num1">2</a>
                <a id="a2" class="num1">1</a>
                <div id="photos1" class="play1">
                    <img src="./images/head.png" >
                    <img src="./images/导航.png" >
                </div>
            </div>
        </div>
        <div id="logo1">
            <table width="1300" border=1px color="white" align="center" >
                <tr>
                    <td width="200" height="100" align="center" onclick="javascript:window.location.href=''"><font size="4" color=“#FFFFFF” face="宋体"><img src="./images/t1.png" align="center">&nbspUI</td>
                    <td width="200" height="100" align="center"  onclick="javascript:window.location.href=''"><font size="4" color=“#FFFFFF” face="宋体"><img src="./images/t2.png" align="center">&nbsp平面</td>
                    <td width="200" height="100" align="center"   onclick="javascript:window.location.href=''"><font size="4" color=“#FFFFFF” face="宋体"><img src="./images/t3.png" align="center">&nbsp插画／漫画</td>
                    <td width="200" height="100" align="center"  onclick="javascript:window.location.href=''"><font size="4" color=“#FFFFFF” face="宋体"><img src="./images/t4.png" align="center">&nbsp家居／家装</td>
                    <td width="200" height="100" align="center"  onclick="javascript:window.location.href=''"><font size="4" color=“#FFFFFF” face="宋体"><img src="./images/t5.png" align="center">&nbsp工业设计</td>
                    <td width="200" height="100" align="center"  onclick="javascript:window.location.href=''"><font size="4" color=“#FFFFFF” face="宋体"><img src="./images/t6.png" align="center">&nbsp生活</td>
                    </font>
                </tr>
            </table>
        </div>
        <div id="s1">
            <div class="font1">
                <font size="6" color="black" face="微软雅黑">花瓣儿</font><br>
            </div>
            <div class="font2">
                <font size="3" color="gray" face="微软雅黑">发现我们生活中的美</font><br>
            </div>
            <div class="font3">
                <table width="1300" border="0" align="left" cellpadding="0" cellspacing="1">
                    <font>
                        <tr>
                            <td width="400" height="100" height="30" align="center" bgcolor="#EEE"><a href="">美图</a></td>
                            <td width="400" height="100" align="center" bgcolor="#EEE"><a href="">元素</a></td>
                            <td width="400" height="100" align="center" bgcolor="#EEE"><a href="">花瓣live</a></td>
                        </tr>
                    </font>
                </table>
                <img src="./images/pic3.jpeg">
            </div>
        </div>
    </div>
    <div id="login">
        <img src="./images/pic5.jpeg">
        <div id="rside">
            <div class="from" >
                <div class="row clearfix">
                    <div class="col-md-12 column" style="padding: 15px; background:#f5f5f5;">
                        <a id="modal-890448" href="#modal-container-2" role="button" class="btn btn-default btn-success" data-toggle="modal" style="float: right; margin-left: 5px; margin-right: 5px;">会员登录</a>
                    </div>
                </div>
                <div class="modal fade" id="modal-container-2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content" style="background:url('');" >
                            <div class="modal-header">
                                <center>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h2 class="modal-title" id="myModalLabel">
                                        会员登录
                                    </h2>
                                </center>
                            </div>
                            <div class="modal-body">
                                <center><h5>
                                    <form action="" name="regist" method="post" >
                                        <table  align="center" border="0">
                                            <tr align="center">
                                                <td>用户名</td>
                                                <td><input type="text" name="username" value="" /></td>
                                            </tr>
                                            <tr align="center">
                                                <td>密码</td>
                                                <td><input type="password" name="password" value="" /></td>
                                            </tr>
                                            <tr align="center">
                                                <td>
                                                    <font size="2.5">用户类型</font></td>
                                                <td> <select name="type">
                                                    <option value="NormalUser">普通用户</option>
                                                    <option value="Administartor">管理员</option></select></td>
                                            </tr>
                                        </table>
                                    </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">提交</button> <button type="button" class="btn btn-primary">重置</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="lside">
                </div>
            </div>
            <div id="footer">
                <form action="" name="regist" method="post" >
                    <table align="center" border="0">
                        <tr align="center">
                            <td colspan="2"><font size="10" color="white"></font></td>
                        </tr>
                        <tr align="center">
                            <td><font color="white">陈娜</font></td>
                        </tr>
                    </table>
                    </tr>
                </form>
            </div>
</body>
</html>
