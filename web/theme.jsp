<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/28
  Time: 上午10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form action="selecttheme" method="POST">
    <s:textfield label="查询主题信息" name="theme"/>
    <s:submit value="主题搜索"/>
</s:form>
</body>
</html>
