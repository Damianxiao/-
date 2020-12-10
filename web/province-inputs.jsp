<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/2
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java"%>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/DIY.css">
    <title>后台管理</title>
</head>
<body id="main" >
<%--正文--%>
<div class="ui container stackable" >
    <%--导航--%>
        <div class="ui  pointing big menu">
            <div class="ui container">
                <div class=" left menu">
                    <a href="province.jsp" class="item teal active ">省份</a>
                    <a href="pointview.jsp" class="item  ">景点</a>
                </div>
            </div>
        </div>
        <form class="ui form" action="ProvinceServlet" method="post">
            <div class="field">
                <div class="ui left labeled input " style="padding-top:20px;padding-bottom: 10px ">
                    <label class="ui  teal basic label">新增省份</label>
                    <input type="text" name="name" placeholder="省份" class="fluid">
                </div>
            </div>
        <%--indexPicture--%>
            <div class="field">
                <div class="ui left labeled input " style="padding-top:10px;padding-bottom: 10px ">
                    <label class="ui  teal basic label">新增首图</label>
                    <input type="text" name="indexPicture" placeholder="图片地址" class="fluid">
                </div>
            </div>
        <%--省份简介--%>
            <div class="field">
                <div class="ui label  basic large teal ">省份简介</div>
                <textarea class="ui segment" name="profile" id="" cols="30" rows="10" placeholder="请输入简介..."></textarea>
                <div class="ui left aligned container" style="padding-top: 20px">
            </div>
                <a href="province.jsp">
                    <button type="button" onclick=" window.history.go(-1)" class="ui teal button">返回</button>
                    <input type="submit"  class="ui submit button" >
                </a>
        </div>
        </form>

</div>
<div class="ui horizontal divider" style="padding-bottom: 80px;padding-top: 40px">中国旅游图鉴</div>
</div>
</body>
<div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
    <script>

        $('.ui.form').form({
            fields:{
                title:{
                    identifier: 'name',
                    rules: [{
                        type: 'empty',
                        prompt: '信息不能为空！'
                    }]
                },
                profile:{
                    identifier: 'profile',
                    rules: [{
                        type: 'empty',
                        prompt: '信息不能为空！'
                    }]
                },
                indexPicture:{
                    identifier: 'indexPicture',
                    rules: [{
                        type: 'empty',
                        prompt: '信息不能为空！'
                    }]
                }
            }
        });
    </script>
</div>
</html>
