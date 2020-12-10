<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/2
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/DIY.css">
    <title>欢迎！</title>
</head>
<body >
<%--开始界面--%>
<div class= stackable" style="z-index: 9999;position: absolute;height: 100%"  id="hidden-area">
    <img src="https://w.wallhaven.cc/full/2e/wallhaven-2eewrg.jpg" alt=""
         class="ui m-background image"
         style="width: 100%;height:100%">
    <div class="m-back-content" align="center">
        <div class="ui basic segment">
        </div>
        <div class="ui basic segment">
        </div>
        <div class="ui basic segment" align="center">
            <h1  style="font-weight:200; margin: 0;color: ivory;font-family: 'Microsoft YaHei UI Light' ">中国旅游景点图鉴</h1>
        </div>
        <div class="ui basic segment" >
            <a href="index.jsp">
                <button  class="ui circular big button green" id="start-button">
                    <span style="font-weight: 300">开始</span>
                </button>
            </a>
        </div>
        <div class="ui basic segment " align="center">
        </div>
        <div class="ui basic segment"></div>
        <div class="ui basic segment"></div>
    </div>
</div>
</div>
</div>
</div>
</body>

<div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
    <script>
        $('#start-button').click(function(){
            $('#hidden-area').transition('fade');
        })

        $('#start-button').transition('pulse');

    </script>
</div>
</html>
