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
    String province = request.getParameter("province");
    Connection conn = DbUtils.getconn();
    String sql = "select id,name,profile,indexPicture from province where name= '"+province+"'";
    PreparedStatement ps= conn.prepareStatement(sql);
    ResultSet rs =ps.executeQuery(sql);
%>
    <%
        if(rs.next()){
    %>
    <div class="ui container" style="width: 100%;height:100% ; position: absolute;padding: 0">
        <div class="content" style="padding-left: 100px;padding-top: 100px;padding-right: 100px">
            <div class="ui teal segments">
                <div class="ui secondary segment">
                    <h2 class="m-content"><%=rs.getString(2)%></h2>
                </div>
                <div class="ui tertiary  segment">
                    <div class="ui padded large middle aligned stackable grid">
                        <!--图片-->
                        <div class="five wide column " align="center">
                            <img src="<%=rs.getString(4)%>" alt="" class="ui rounded image" style="width: 500px;">
                        </div>
                        <!--内容-->
                        <div class="eleven wide column">
                            <span class="content m-content m-black"><%=rs.getString(3)%></span>
                        </div>
                    </div>
                </div>
                <div class="ui  secondary segment" align="center">
                    <a href="info.jsp?name=<%=rs.getString(1)%>" >
                        <button  class="ui primary big button teal" id="dimmer-button">
                            <span style="font-weight: 300;">继续</span>
                        </button>
                    </a>
                </div>
            </div>
        </div>

    <%
    }else{
    %>
</div>

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
</body>
<div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
    <script>
    </script>
</div>
</html>
