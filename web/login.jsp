<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/6
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/DIY.css">
    <title>管理员登录界面</title>
</head>
<body>
<img src="resource/background.jpg" alt=""
     class="ui m-background image"
     style="width: 100%;height:100%;z-index:0;position: absolute">
<div class="ui container" style="width: 100%;height:100%;padding-top: 150px;position: absolute"  align="center">
    <div class="ui huge header " style="font-weight: 300;color: lightgray" ><i class="user icon middle"></i>管理员登录</div>
    <div class="ui  segment" style="width: 300px" >
        <form class="ui  form" name="loginForm" action="LoginServlet" method="post">
                <div class="field">
                    <label>用户名</label>
                    <input placeholder="Username" type="text" name="username">
                </div>
                <div class="field">
                    <label>密码</label>
                    <input placeholder="Password" type="password" name="password">
                </div>
            <button type="submit" class="ui submit button fluid" onclick="return checkForm()">提交</button>
        </form>
    </div>
</div>
</body>
<footer>
    <div>
        <script src="http://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js">
        </script>
        <script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
        <%--表单校验--%>
        <script type="text/javascript">
            function  checkForm() {
                var username = loginForm.username.value;
                var password = loginForm.password.value;
                if (username== "" || username== null) {
                    alert("用户名不能为空");
                    loginForm.username.focus();
                    return false;
                } else if (password == "" || password == null) {
                    alert("密码不能为空");
                    loginForm.password.focus();
                    return false;
                }
            }
            $('.ui.form').form({
                fields:{
                    title:{
                        identifier: 'name',
                        rules: [{
                            type: 'empty',
                            prompt: '请输入分类名称:'
                        }]
                    }
                }
            });
        </script>
    </div>
</footer>
</html>
