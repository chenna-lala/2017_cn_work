<%--
  Created by IntelliJ IDEA.
  User: chenna
  Date: 2017/11/23
  Time: 下午1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="S" uri="/struts-tags" %>
<s:i18n name="nuc.sw.i18n.login">
  <html>
  <head>
    <title><s:text name="title"/></title>
    <s:head/>
    <meta name="author" content="陈娜">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <style>
      #container{
        width:1300px;
      }
      #header{
        height:300px;
        border:1px #EEE solid;
      }
      #main{
        height:750px;
        margin-top: 50px;
      }
      #lside{
        width:900px;
        height:700px;
        float: left;
        border:1px #EEE solid;
      }
      #rside{
        width:350px;
        height:700px;
        float: right;
        border:1px #EEE solid;
        background-image: url(./images/背景色png.png);
      }
      #footer{
        width:1300px;
        height:300px;
        border:1px #EEE solid;
        background-image: url(./images/背景.png);
      }
      .four{
        width:400px;
        height: 300px;
        background-color: #EEE;
        float: left;
        border:1px white solid;
        margin-top:30px;
        margin-right: 20px;
        margin-left: 20px;
      }
      .p1{
        width:150px;
        height: 250px;
        float:left;
        margin-right: 10px;
        margin-top:10px;
      }
      .condition1{
        width:200px;
        height: 300px;
        float: left;
        margin-top: 10px;
        margin-left: 10px;
      }
      .p2{
        width:150px;
        height: 250px;
        float:left;
        margin-right: 10px;
        margin-top:10px;
      }
      .condition2{
        width:200px;
        height: 300px;
        float: left;
        margin-top: 10px;
        margin-left: 10px;
      }
      .p3{
        width:150px;
        height: 250px;
        float:left;
        margin-right: 10px;
        margin-top:10px;
      }
      .condition3{
        width:200px;
        height: 300px;
        float: left;
        margin-top: 10px;
        margin-left: 10px;
      }
      .p4{
        width:150px;
        height: 250px;
        float:left;
        margin-right: 10px;
        margin-top:10px;
      }
      .condition4{
        width:200px;
        height: 300px;
        float: left;
        margin-top: 10px;
        margin-left: 10px;
      }
      .from{
        margin-top: 50px;
        margin-left: 50px;

      }
      .question{
        margin-left: 50px;
        margin-top:100px;
      }
      .last{
        margin-top: 10px;

      }
  </style>

  </head>
  <body>
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
    <div id="main">
      <div id="lside">
        <div class="four">
          <div class="p1">
            <img src="./images/浅浅.png">
          </div>
          <div class="condition1">
            <ul>

              <li>演员: <a href="yangmi.html" target="blank">杨幂</a></li>
              <li>角色: 青丘白浅</li>
              <li>介绍: 青丘女君，夜华未婚妻；九尾白狐，白<br>止帝君的幺女，太子夜华的未婚妻，年少时，她曾拜师于墨渊门下，学艺时曾女扮男装为司音。</li>
            </ul>
          </div>
        </div>
        <div class="four">
          <div class="p2">
            <img src="./images/夜华.png">
          </div>
          <div class="condition2">
            <ul>
              <li>演员: <a href="zhaoyouting.html" target="blank">赵又廷</a></li>
              <li>角色: 天族太子</li>
              <li>介绍: 天族太子，继承天君之位；白浅未婚<br>夫;深受天帝的宠爱与众神的拥护，俊朗无<br>比，法力高强，后来妖君出世，他用自己的元<br>神封印东皇钟，自己却沉睡不醒，而后几百年<br>，他重新归来。  </li>
            </ul>
          </div>
        </div>
        <div class="four">
          <div class="p3">
            <img src="./images/凤九.png"></div>
          <div class="condition3">
            <ul>
              <li>演员: <a href="yangmi.html" target="blank">迪丽热巴</a></li>
              <li>角色: 青丘小帝姬</li>
              <li>介绍: 青丘小帝姬；四海八荒唯一的一只九尾红狐，额间一朵凤羽花胎记。她因出生在九月，故取名凤九。四海八荒第二绝色，她是白浅的侄女，青丘的下一个女帝姬，暗恋东华帝君几千年，最终在一起。</li>
            </ul>
          </div>
        </div>
        <div class="four">
          <div class="p4">
            <img src="./images/东华.png"></div>
          <div class="condition4">
            <ul>
              <li>演员: <a href="yangmi.html" target="blank">高伟光</a></li>
              <li>角色: 天地共主</li>
              <li>介绍: 东华，凤九喜欢多年的人，他曾是天地的共主，后来隐居在三清幻境的菩提净土，世人不敢拉他进十丈红尘，喜爱习一身紫衣，加上皓皓银发，让人只敢远观，他性格高冷、腹黑、毒舌。</li>
            </ul>
          </div>
        </div>
      </div>
      <div id="rside">
        <div class="from">
          <s:form action="login" method="POST">
          <div id="all">
            <div id="login">
              <div id="login_title">
                <img src="./images/6.png">
                <h2>花瓣儿</h2>
              </div>
              <div class="line">
                <td><s:textfield key="user" name="username"></s:textfield></td>
              </div>
              <div class="line">
                <td><s:password key="pass" name="password"></s:password></td>
              </div>
                <%--<td><s:text name="type"></s:text>--%>
                <%--<select name="type">--%>
                <%--<option><s:text name="admin"></s:text></option>--%>
                <%--<option><s:text name="puser"></s:text></option>--%>
                <%--</select></td>--%>
              <td><s:submit key="submit"></s:submit></td>
              <td>
                <s:a href="regist.jsp"><input type="button" value="<s:text name="regist"/>"/></s:a>
              </td>
              </s:form>
              <s:text name="check"></s:text>
              <a href="loginAction?request_locale=<s:text name="path"/>"><s:text name="required.Version"></s:text></a>
            </div>
        <div class="question">
          <ul>
            <marquee direction="down" behavior="slide">
              <li><a href="a1" target="black">三生三世十里桃花主题曲</a></li>
              <li><a href="a1" target="black">白浅血洗大紫明宫</a></li>
              <li><a href="a1" target="black">姑父为何吃醋</a></li>
              <li><a href="a1" target="black">三生三世十里桃花姑姑手虐素锦</a></li></marquee>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div id="footer">
    <div class="last">
      <ul>
        <li>制作者：陈娜</li>
        <li>学号:1514010608</li>
      </ul>
    </div>
  </div>

  <S:fielderror fieldName="err"></S:fielderror>
  </body>
  </html>
</s:i18n>


