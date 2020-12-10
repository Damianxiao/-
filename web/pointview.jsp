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
<%--连接数据库--%>
<%
    Connection conn = DbUtils.getconn();
    String sql = "select name,profile from pointview";
    PreparedStatement ps= conn.prepareStatement(sql);
    ResultSet rs =ps.executeQuery();
    int pagesize =3;
    int currentpage;
    String strpage;
    int pagecount;
    strpage = request.getParameter("page");
    if(strpage==null){
        currentpage=1;
    }
    else{
        currentpage=Integer.parseInt(strpage);
        if(currentpage<1)
            currentpage=1;
    }
%>
<body id="main" >
<%--正文--%>
<div class="ui container stackable" >
    <div class="ui attached pointing big menu">
        <div class="ui container">
            <div class=" left menu">
                <a href="index.jsp" class="item  ">Home</a>
                <a href="province.jsp" class="item  ">省份</a>
                <a href="pointview.jsp" class="item teal active">景点</a>
            </div>
        </div>
    </div>
    <table class="ui stacked celled table">
        <thead>
        <!--在表格中拿到数据对象,each是循环方法-->
        <tr>
            <th>景点列表</th>
            <th>景点简介</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <%
            int i =0 ;
            rs.last();
            pagecount = (rs.getRow()+pagesize-1)/pagesize;
            if(currentpage > pagecount){
                currentpage=pagecount;
            }
            if(pagecount>0){
                rs.absolute((currentpage-1)*pagesize+1);
            }
            while(i<=pagecount+1 && !rs.isAfterLast()){
        %>
        <tr >
            <td>
                <i class="ui button"><%=rs.getString(1) %></i>
            </td>
            <%
                if((rs.getString(2).length()<50 )){
            %>
            <td>  <%=(rs.getString(2))%> </td>
            <%
                }else {
            %>
            <td>  <%=(rs.getString(2)).substring(0,50)%>... </td>
            <%
                }
            %>
            <td>
                <!--返回一个页面-->
                <a href="pointview-inputs.jsp" class="ui teal button ">编辑</a>
                <a href="/PointViewDeleteServlet?name=<%=rs.getString(1)%>" class="ui  red button ">删除</a>
            </td>
        </tr>
        <%
                rs.next();
                i++;
            }
        %>
        </tbody><tfoot>
    <tr>
        <!--                colspan是合并单元格-->
        <th colspan="6">
            <div class="ui left floated mini pagination stackable menu" >
                <%
                    if(currentpage>1){
                %>
                <a href="pointview.jsp?page=<%= currentpage-1%>" class="item" >上一页</a>
                <%
                    }
                %>
                <%
                    if(currentpage<pagecount){
                %>
                <a href="pointview.jsp?page=<%= currentpage+1%>" class="item" >下一页</a>
                <%
                    }
                %>
            </div>
            <a href="pointview-inputs.jsp" class="ui button mini right floated teal basic ">新增</a>
        </th>
    </tr>
    </tfoot>
    </table>
    <div class="ui horizontal divider" style="padding-bottom: 80px;padding-top: 40px">中国旅游图鉴</div>
</div>
</body>
<div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
    <script>
            $('#main').transition('pulse');
    </script>
</div>
</html>
