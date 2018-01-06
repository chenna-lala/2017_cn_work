<%@ page import="nuc.sw.model.Picture" %>
<%@ page import="nuc.sw.dao.PictureImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/23
  Time: 下午10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="S" uri="/struts-tags" %>
<html>
<head>

    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title>Title</title>
    <style >
    #container{
    width:1000px;
    }
    #header{
    height:300px;
    border:1px #EEE solid;
    }
    </style>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">花瓣儿</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="selectUser.jsp">查询用户信息</a></li>
                <li><a href="theme.jsp">主题查询</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        文件 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="upload.jsp">上传图片</a></li>
                        <li><a href="selectUser.jsp">查询用户信息</a></li>
                        <li><a href="select.jsp">查询页面</a></li>
                        <li class="divider"></li>
                        <li><a href="UploadListAction.action">下载文件展示</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<audio controls="controls" hidden="hidden" autoplay="autoplay" loop="loop">
    <source src="./images/张杰-三生三世.mp3" type="audio/ogg" />
    <source src="./images/张杰-三生三世.mp3" type="audio/mpeg" />搜索
</audio>
<div id="container">
    <div id="nav">

    </div>
    <div id="header">
        <marquee direction="right" behavior="alternate" srollamount="">
            <img src="./images/导航.png">
            <img src="./images/head.png"></marquee>
    </div>
<%--<form action="pictureAction" method="post">--%>
    <table class="table table-hover">
        <caption></caption>
        <thead>
        <center>
        <tr>

            <th>封面</th>
            <th>图片名称</th>
            <th>作者</th>
            <th>主题</th>
            <th>删除</th>

        </tr>
        </center>
        </thead>
        <tbody>
        <S:iterator value="picture" var="picture" status="st">
            <tr>
                <td><img src="<s:property value='#picture.path'/>"></td>
                <center><td><s:property value="#picture.picturename"/></td></center>
                <center><td><s:property value="#picture.author"/></td></center>
                <center><td><s:property value="#picture.theme"/></td></center>
                <center><td><a href="picturedelete?pid=<s:property value='#picture.pid'/>">删除</a> </td></center>
                <td></td>
            </tr>
        </S:iterator>
        </tbody>
    </table>


    <%--<table border="1" width="80%" align="center">--%>
            <%--<tr>--%>
                <%--<th>封面</th>--%>
                <%--<th>图片名称</th>--%>
                <%--<th>作者</th>--%>
                <%--<th>主题</th>--%>
                <%--<th>删除</th>--%>
            <%--</tr>--%>
            <%--<S:iterator value="picture" var="picture" status="st">--%>
                <%--<tr>--%>
                    <%--<td><img src="<s:property value='#picture.path'/>"></td>--%>
                    <%--<td><s:property value="#picture.picturename"/></td>--%>
                    <%--<td><s:property value="#picture.author"/></td>--%>
                    <%--<td><s:property value="#picture.theme"/></td>--%>
                        <%--<td><a href="picturedelete?pid=<s:property value='#picture.pid'/>">删除</a> </td>--%>
                    <%--<td></td>--%>
                <%--</tr>--%>
            <%--</S:iterator>--%>
        <%--</table>--%>



    <%--<a href="upload.jsp">上传图片</a>--%>
<%--<a href="selectUser.jsp">查询用户信息</a>--%>
    <%--<a href="select.jsp">查询页面</a>--%>
    <%--<a href="addpicture.jsp">添加图片信息界面</a>--%>
    <%--<a href="UploadListAction.action">下载文件展示</a>--%>
<%--</form>--%>
</body>
</html>
