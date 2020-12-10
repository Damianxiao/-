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
    <link rel="stylesheet" href="css/DIY.css">
    <title>Fail!</title>
    <%--两秒过后自动跳转到登录页面--%>
    <meta http-equiv="refresh" content="1;url=login.jsp">
</head>
<body >
<div class="ui container animated fadeIn" id="message" style="padding-top: 60px;padding-bottom: 30px">
    <div class="ui success large message red">
        <i class="close icon"></i>
        <h3>错误！</h3>
        <p>用户名或密码错误！</p>
    </div>
</div>
</body>
<div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
    <script>
        $('#message').transition('bounce');

        $('.close')
            .on('click',function(){
                $(this)
                    .closest('.message')
                    .transition('fade');
            });
    </script>
</div>
</html>
