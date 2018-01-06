<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/27
  Time: 下午2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8">
    <title>展示</title>
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
<table class="table table-hover">
    <caption>图片文件展示</caption>
    <thead>
    <tr>
        <th>图片序号</th>
        <th>图片名</th>
        <th>图片下载</th>
    </tr>
    </thead>
    <tbody>
    <s:iterator value="file" var="file">
        <tr>
            <td valign="middle"><s:property value="#file.id"/></td>
            <td valign="middle"><s:property value="#file.filename"/></td>
            <td><a href="downloadAction.action?inputPath=<s:property value="#file.fullPath"/>&downFileName=<s:property value="#file.filename"/>&contentType=<s:property value="#file.uploadContentType"/>"><s:property value="#file.filename"/>下载</a></td>
                <%--<td valign="middle"><s:property value="#file.path"/></td>--%>

                <%--<td><a href="downloadAction.action?inputPath=<s:property value="#s.fullPath"/>&downFileName=<s:property value="#s.filename"/>&contentType=<s:property value="#s.uploadContentType"/>"><s:property value="#s.filename"/></a></td>--%>
        </tr>
    </s:iterator>
    </tbody>
</table>
<%--<table border="1">--%>

    <%--<tr>--%>
        <%--<td height="38" colspan="6" align="center" valign="middle">您的上传图片信息信息</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<th>图片序号</th>--%>
        <%--&lt;%&ndash;<th>用户名</th>&ndash;%&gt;--%>
        <%--<th>图片名</th>--%>
        <%--<th>图片下载</th>--%>
        <%--&lt;%&ndash;<th>图片存放地址</th>&ndash;%&gt;--%>

    <%--</tr>--%>
    <%--<s:iterator value="file" var="file">--%>
        <%--<tr>--%>
            <%--<td valign="middle"><s:property value="#file.id"/></td>--%>
            <%--<td valign="middle"><s:property value="#file.filename"/></td>--%>
            <%--<td><a href="downloadAction.action?inputPath=<s:property value="#file.fullPath"/>&downFileName=<s:property value="#file.filename"/>&contentType=<s:property value="#file.uploadContentType"/>"><s:property value="#file.filename"/>下载</a></td>--%>
                <%--&lt;%&ndash;<td valign="middle"><s:property value="#file.path"/></td>&ndash;%&gt;--%>

            <%--&lt;%&ndash;<td><a href="downloadAction.action?inputPath=<s:property value="#s.fullPath"/>&downFileName=<s:property value="#s.filename"/>&contentType=<s:property value="#s.uploadContentType"/>"><s:property value="#s.filename"/></a></td>&ndash;%&gt;--%>
        <%--</tr>--%>
    <%--</s:iterator>--%>
<%--</table>--%>
</body>
</html>
