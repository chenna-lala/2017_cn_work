<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/23
  Time: 下午1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>

    <s:head/>
</head>
<body>
<s:form action="registAction" method="POST">
    <tr><s:textfield name="username" label="用户名"></s:textfield></tr>
    <tr><s:password label="密码" name="password"></s:password></tr>
    <tr><s:password label="确认密码" name="repassword"></s:password></tr>
    <%--<tr><sx:datetimepicker label="生日" name="birth" displayFormat="yyyy-mm-dd"></sx:datetimepicker></tr>--%>
    <tr><s:textfield label="电话号码" name="tel"></s:textfield></tr>
    <tr><s:textfield label="邮箱" name="email"></s:textfield></tr>
    <tr> <s:textfield label="验证码" name ="code"></s:textfield>
        <td>
            <img src="CodeAction.action" onclick="this.src='CodeAction.action'" title="点击图片刷新验证码"/><br>
        </td>
    </tr>
    <s:submit value="注册"></s:submit>
</s:form>
</body>
</html>
