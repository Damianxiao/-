<%@ page import="java.sql.Connection" %>
<%@ page import="Tools.DbUtils" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  UserDao: Administrator
  Date: 2020/9/2
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/DIY.css">
    <title>后台管理</title>
</head>
<body id="main" >
<div class="ui  pointing big menu">
    <div class="ui container">
        <div class=" left menu">
            <a href="province.jsp" class="item ">省份</a>
            <a href="pointview.jsp" class="item teal active">景点</a>
        </div>
    </div>
</div>

<%--正文--%>

<div class="ui container m-opacity-mini" style="padding-top: 30px">
    <form action="PointViewAddServlet" method="post" class="ui form" >
        <div class=" field required">
            <div class="ui left labeled input ">
            <div class="ui basic  middle teal  label ">所属省份</div>
            <select class="ui fluid search dropdown" name="provinceid">
                        <%
                            Connection conn =DbUtils.getconn();
                            String sql = "select name,id from province";
                            PreparedStatement ps= conn.prepareStatement(sql);
                            ResultSet rs =ps.executeQuery();
                            while(rs.next()){
                        %>
                        <option value="<%=rs.getString(2)%>"><%=rs.getString(1)%></option>
                        <%
                            }
                        %>
            </select>
            </div>
        </div>
        <div class="field">
            <div class="ui left labeled input ">
                <div class="ui basic  middle teal  label ">景点名称</div>
                <input type="text" name="name" placeholder="名称..."  >
            </div>
        </div>
        <div class="field ">
            <div class="ui left labeled input ">
                <div class="ui basic middle teal label ">首图地址</div>
                <input type="text" name="indexPicture" placeholder="首页图片" >
            </div>
        </div>
        <div class=" field">
            <div class="ui basic large teal  label ">景点详情</div>
            <textarea name="profile"  placeholder="景点详情..." maxlength="500"></textarea>
        </div>
        <div class=" field">
            <div class="ui basic large teal  label ">出游建议</div>
            <textarea name="advise"  placeholder="出游建议..." maxlength="500"></textarea>
        </div>
        <div class=" field">
            <div class="ui basic large teal  label ">指南</div>
            <textarea name="guide"  placeholder="指南..." maxlength="500"></textarea>
        </div>
        <div class="ui right aligned container">
            <!--            window.history.go(-1)代表返回上一个页面-->
            <button type="button" onclick=" window.history.go(-1)" class="ui teal button">返回</button>
            <input type="submit"  class="ui submit button" >
        </div>
    </form>
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
                },
                advise:{
                    identifier: 'advise',
                    rules: [{
                        type: 'empty',
                        prompt: '信息不能为空！'
                    }]
                },
                guide:{
                    identifier: 'guide',
                    rules: [{
                        type: 'empty',
                        prompt: '信息不能为空！'
                    }]
                }
            }
        });

        $('.ui.dropdown').dropdown();

    </script>
</div>
</html>
