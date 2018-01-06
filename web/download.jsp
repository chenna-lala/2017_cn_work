<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/27
  Time: 下午9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href=""></a>
<s:iterator value="file" var="file">
    文件名：<a href="downloadAction?inputPath=<s:property value="#file.path"/>&downFileName=<s:property value="#file.filename"></s:property>&contentType=<s:property value="#file.uploadContentType"></s:property>">
    <s:property value="#file.filename"/></a><br>
    <a href=""><s:property value="#file.filename"/></a>
</s:iterator>
<s:debug></s:debug>
</body>
</html>
