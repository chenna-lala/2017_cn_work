<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/23
  Time: 下午11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form action="addpictureAction" method="POST">
    <tr><s:textfield name="picturename" label="图片名称"></s:textfield></tr>
    <tr><s:textfield name="author" label="作者"></s:textfield> </tr>
    <tr><s:textfield name="theme" label="主题"/></tr>
    <tr><s:submit label="提交"></s:submit> </tr>
</s:form>
</body>
</html>
