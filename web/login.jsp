<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/27
  Time: 下午10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script language="javascript">
        function check(){
            if (form1.name.value == "")
            {
                alert("请输入用户名");form1.name.focus();return;
            }else if (form1.password.value == "")
            {
                alert("请输入密码");form1.password.focus();return;
            }else
            {
                form1.submit();
            }
        }
    </script>
    <style type="text/css">
        *{
            margin:0;
            padding:0;
        }

        body{
            font-family: "Microsoft Yahei";
        }
        #all{
            width:1444px;
            height:767px;
            background:url("./images/5.jpg");
            margin:0 auto;
        }
        #login {
            width: 400px;
            height: auto;
            overflow: hidden;
            border: solid 1px #CCCCCC;
            position:absolute;
            top:19%;
            left:24%;
            background-color: #E1EFF7;
            border-radius: 8px;
        }
        #login_title {
            width: 100%;
            height: 60px;
            text-align:center;
        }
        h2{
            margin-top:4px;
            color:#415A84;
        }
        .line {
            width: 380px;
            height: 30px;
            margin-top: 35px;
            line-height: 60px;
            margin-left: 20px;
            text-align: center;
        }
        .line input {
            width: 200px;
            height:30px;
        }
        .line a {
            font-size: 14px;
            color: black;
        }
        .line span {
            color: #F00;
        }
        #log_submit {
            display: block;
            width: 200px;
            height: 30px;
            margin-left:112px;
            margin-top: 50px;
            margin-bottom: 5px;
        }
        select{
            height:30px;
            width:100px;
            font-family: "Microsoft Yahei";
        }
        #footer {
            width: 100%;
            line-height: 26px;
            position: absolute;
            bottom: 30px;
            font-family: Verdana, Geneva, sans-serif;
            font-size: 12px;
            color: #011e54;
            text-align:center;
        }
    </style>
<body>
          <form action="LoginServlet" method="post" name="form1">
        <div id="all">
        <div id="login">
        <div id="login_title">
        <img src="./images/6.png">
        <h2>学生实验预约平台</h2>
                      </div>

                        <div class="line">
                            <td><s:textfield key="user" name="username" ></s:textfield></td>
		    	 <%--<input name="name" type="text" placeholder="学生/教师/管理员" />--%>
        </div>
          <div class="line">
              <td><s:password key="pass" name="password"></s:password></td>
        </div>
            <s:text name="check"></s:text>
        </div>
          </div>
            <div id="footer">
        <p> 中北大学 :文澜苑</p>
                       <p><span><a href="http://www.nuc.edu.cn/" target="_blank" style="color:#606060">联系我们</a></span></p>
                                                                                                                        </div>
                                                                                                                          </form>
</body>
</html>
