<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Tools.DbUtils" %><%--
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
    <title>详情</title>
</head>
<body id="main">
<%
    String province = (String) session.getAttribute("province");
    Connection conn = DbUtils.getconn();
    String sql = "select name,profile,indexPicture from province where name= '" + province + "'";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery(sql);
%>

<div class="ui basic segment" id="dimmer">

    <%
        if (rs.next()) {
    %>
    <div class="ui container stackable" style="padding-top: 50px;" id="province">
                    <div class="ui  small container" style="height:100% ;padding: 0">
                            <div class="ui teal segments">
                                <div class="ui secondary segment">
                                    <h2 class="m-content" align="center"><%=rs.getString(1)%>
                                    </h2>
                                </div>
                                <div class="ui tertiary  segment">
                                    <div class="ui padded large middle aligned stackable grid">
                                        <!--图片-->
                                        <div class="five wide column " align="center">
                                            <img src="<%=rs.getString(3)%>" alt="" class="ui rounded image"
                                                 style="width: 300px;height: 200px">
                                        </div>
                                        <!--内容-->
                                        <div class="eleven wide column">
                                            <span class="content m-content m-black"><%=rs.getString(2)%></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                <div  style="padding-top: 200px">
                    <p style="font-weight: 200;font-size: 50px;padding-bottom:20px; margin: 0" id="head">景点详情</p>
                </div>
        <div align="right">
            <button class="ui icon big button " id="link" ><i class="linkify icon" ></i> 省份信息</button>
        </div>
        <div class="ui basic  segment">
            <div class="ui horizontal link list">
                <div class="item right aligned  m-content">
                    <div class="ui breadcrumb">
                        <a class="section">
                        </a><a href="index.jsp" class="m-black m-content" target="_self">省份列表</a>
                        <i class="right angle icon divider"></i>
                        <a class="section">
                            <div class="item left aligned  m-black m-content"><%=rs.getString(1)%>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="ui horizontal divider" style="padding: 0"><p style="color: lightgray">MORE</p></div>
        <div class="ui grid">
            <%
                String sql2 = "select name from pointview where provinceid=(select id from province where name= '" + province + "')";
                PreparedStatement ps2 = conn.prepareStatement(sql2);
                ResultSet rs2 = ps.executeQuery(sql2);
            %>
            <%--侧边栏--%>
            <div class="four wide column">
                <div class="ui secondary vertical pointing menu">
                    <%
                        while (rs2.next()) {
                    %>
                    <a href="PointviewInfoServlet?pointviewname=<%=rs2.getString(1)%>" class="item m-content"
                       id="pointviewname"><%=rs2.getString(1)%>
                    </a>
                    <%
                        }
                    %>
                </div>
            </div>
            <div class="eleven wide column">
                <%--首图--%>
                <%
                    String pointviewname = (String) session.getAttribute("pointviewname");
                    String sql3 = "select name,profile,advise,guide,indexPicture from pointview where name= '" + pointviewname + "'";
                    PreparedStatement ps3 = conn.prepareStatement(sql3);
                    ResultSet rs3 = ps.executeQuery(sql3);
                    if (rs3.next()) {
                %>
                    <h1 align="center" style="font-weight: 200;font-size: 40px;padding-top: 50px"><%=rs3.getString(1)%></h1>
                <div class="ui header huge" style="font-weight: 200;padding-top: 20px">景点速览:</div>
                <img class="ui rounded image" src="<%=rs3.getString(5)%>" alt="" style="width: 750px;height: 500px">
                <%--简介--%>
                <div class="m-content ui segment" style="padding-top: 20px"><span style="overflow:auto;white-space:pre-wrap;" class="m-content"><%=rs3.getString(2)%></span>
                </div>
                <%--注意事项--%>
                <div class="ui header huge" style="font-weight: 200">出游建议：</div>
                <div class="m-content ui segment"><span style="overflow:auto;white-space:pre-wrap;" class="m-content "><%=rs3.getString(3)%></span>
                </div>
                <%--其他--%>
                <div class="ui header huge" style="font-weight: 200">旅游指南：</div>
                <div class="ui segment m-content"><span style="overflow:auto;white-space:pre-wrap;" class="m-content"><%=rs3.getString(4)%></span>
                </div>
            </div>
            <%
            } else {
            %>
            <div class="ui container " id="message" style="padding-top: 30px;padding-bottom: 30px">
                <div class="ui success large message">
                    <div class="header">提示：</div>
                    <p>请选择左侧景点以查看信息</p>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <div class="ui horizontal divider" style="padding-bottom: 80px;padding-top: 40px">中国旅游图鉴</div>
</div>

</div>
<%
} else {
%>
<div class="ui container animated fadeIn" id="message" style="padding-top: 60px;padding-bottom: 30px">
    <div class="ui success large message red">
        <i class="close icon"></i>
        <h3>抱歉！</h3>
        <p>暂无当前省份信息！</p>
        <a href="index.jsp">
            <div class="ui basic red button">返回</div>
        </a>
    </div>
</div>
<%
    }
%>
<div class=" m-fixed m-right-bottom">
    <div id="top-button" href="#" class="ui big  icon button"><i class="paper plane icon"></i></div>
</div>
</body>

<div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/jquery.scrollto@2.1.2/jquery.scrollTo.min.js"></script>
    <script>
    </script>
    <script type="text/javascript">
        $('#message').transition('shake');

        $('#link').transition('pulse');


        //0是页面的位置 500是响应的时间
        $(window).scrollTo($('#head'), 0);

        $('#link').click(function () {
            $(window).scrollTo($('#province'), 500);
        })

        $('#top-button').click(function () {
            //0是页面的位置 500是响应的时间
            $(window).scrollTo($('#head'), 500);
        });


    </script>
</div>
</html>
