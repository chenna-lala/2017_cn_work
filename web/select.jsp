<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/27
  Time: 下午3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form action="selectpicturename" method="POST">
    <s:textfield label="查询图片名称" name="picturename"/>
    <s:submit value="按名称搜索"/>
</s:form>
</body>
</html>
