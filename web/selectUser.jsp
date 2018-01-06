<%@ page import="nuc.sw.dao.UserDao" %>
<%@ page import="nuc.sw.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="nuc.sw.dao.UserDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/24
  Time: 上午10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>用户显示</title>
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
<%
    UserDaoImpl userdao=new UserDaoImpl();
    List<User> listall=new ArrayList<User>();
    listall=userdao.selectuser();
    Iterator<User> iter=listall.iterator();

%>
<table class="table table-striped">
    <%
               while (iter.hasNext()){
          User user=iter.next();
    %>
    <caption></caption>
    <thead>
    <tr>
        <th>用户id</th>
        <th>用户名</th>
        <th>用户密码</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%=user.getId()%></td>
        <td><%=user.getUsername()%></td>
        <td><%=user.getPassword()%></td>
        <td><a href="DeleteAction?id=<%=user.getId()%>">删除用户</a></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

<%--<table border="1">--%>
        <%--<%--%>
    <%--while (iter.hasNext()){--%>
        <%--User user=iter.next();--%>
<%--%>--%>
    <%--<tr>--%>
        <%--<td><%=user.getId()%></td>--%>
        <%--<td><%=user.getUsername()%></td>--%>
        <%--<td><%=user.getPassword()%></td>--%>
        <%--<td><a href="DeleteAction?id=<%=user.getId()%>">删除用户</a></td>--%>
    <%--</tr>--%>

        <%--<%--%>
    <%--}--%>
<%--%>--%>
</>
</body>
</html>
