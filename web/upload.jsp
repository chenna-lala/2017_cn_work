<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/24
  Time: 下午12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
            <a class="navbar-brand" href="show.jsp">花瓣儿</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="selectUser.jsp">查询用户信息</a></li>
                <li><a href="select.jsp">查询页面</a></li>
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
<s:form action="uploadAction" method="POST" enctype="multipart/form-data">
    <s:textfield label="主题" name="title"></s:textfield>
    <s:file label="选择图片" name="upload"></s:file>
    <s:submit value="上传"></s:submit>
</s:form>
</body>
</html>
