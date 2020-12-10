<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/28
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/DIY.css">
    <title>验证</title>
    <meta http-equiv="refresh" content="1;url=province.jsp">
</head>
<body>
<%--成功操作--%>
<div class="ui container animated fadeIn" id="message" style="padding-top: 30px;padding-bottom: 30px">
    <div class="ui success large message">
        <i class="close icon"></i>
        <div class="header">提示：</div>
        <p >操作成功！</p>
    </div>
</div>
</body>
</html>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
<script>
    $('.close')
        .on('click',function(){
            $(this)
                .closest('.message')
                .transition('fade');
        });
</script>