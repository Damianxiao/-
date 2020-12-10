<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="Tools.DbUtils" %>
<%@ page import="java.sql.Connection" %><%--
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
    <link rel="stylesheet" href="css/zzsc.css">
    <title>景点图鉴</title>
  </head>
  <%--背景--%>
  <body >
<%--正文--%>
  <div   id="main">
      <%

      %>
      <%--总标题--%>
    <div class="ui container m-content" style="padding-left: 200px;padding-top: 50px;padding-right: 200px ; ">
        <p style="font-weight: 200;font-size: 50px;margin: 0;" align="left" >省份列表</p>
        <div align="right">
          <a href="login.jsp" class="m-content" style="font-weight:400;font-family: Microsoft YaHei UI;color: black"  ><i class="small user icon"></i>管理员登录</a>
        </div>
        <%--上分割线--%>
      <div class="ui horizontal divider" style="padding: 0;margin: 0"><p >中国景点图鉴</p></div>
        <%--省份列表--%>
        <div class="ui segment" style="padding-left: 80px">
            <dl id="gmap" >


                <dd><a id="xj" title="新疆" href="InfoServlet?province=新疆" target="_self">新疆</a></dd>

                <dd><a id="xz" title="西藏" href="InfoServlet?province=西藏" target="_self">西藏</a></dd>

                <dd><a id="qh" title="青海" href="InfoServlet?province=青海" target="_self">青海</a></dd>

                <dd><a id="gs" title="甘肃" href="InfoServlet?province=甘肃" target="_self">甘肃</a></dd>

                <dd><a id="lmg" title="内蒙古" href="InfoServlet?province=内蒙古" target="_self">内蒙古</a></dd>

                <dd><a id="hlj" title="黑龙江" href="InfoServlet?province=黑龙江" target="_self">黑龙江</a></dd>

                <dd><a id="jl" title="吉林" href="InfoServlet?province=吉林" target="_self">吉林</a></dd>

                <dd><a id="ln" title="辽宁" href="InfoServlet?province=辽宁" target="_self">辽宁</a></dd>

                <dd><a id="sd" title="山东" href="InfoServlet?province=山东" target="_self">山东</a></dd>

                <dd><a id="hb" title="河北" href="InfoServlet?province=河北" target="_self">河北</a></dd>

                <dd><a id="sx" title="山西" href="InfoServlet?province=山西" target="_self">山西</a></dd>

                <dd><a id="bj" title="北京" href="InfoServlet?province=北京" target="_self">北京</a></dd>

                <dd><a id="tj" title="天津" href="InfoServlet?province=天津" target="_self">天津</a></dd>

                <dd><a id="shx" title="陕西" href="InfoServlet?province=陕西" target="_self">陕西</a></dd>

                <dd><a id="nx" title="宁夏" href="InfoServlet?province=宁夏" target="_self">宁夏</a></dd>

                <dd><a id="hn" title="河南" href="InfoServlet?province=河南" target="_self">河南</a></dd>

                <dd><a id="js" title="江苏" href="InfoServlet?province=江苏" target="_self">江苏</a></dd>

                <dd><a id="ah" title="安徽" href="InfoServlet?province=安徽" target="_self">安徽</a></dd>

                <dd><a id="sh" title="上海" href="InfoServlet?province=上海" target="_self">上海</a></dd>

                <dd><a id="zj" title="浙江" href="InfoServlet?province=浙江" target="_self">浙江</a></dd>

                <dd><a id="jx" title="江西" href="InfoServlet?province=江西" target="_self">江西</a></dd>

                <dd><a id="hj" title="福建" href="InfoServlet?province=福建" target="_self">福建</a></dd>

                <dd><a id="gd" title="广东" href="InfoServlet?province=广东" target="_self">广东</a></dd>

                <dd><a id="hl" title="海南" href="InfoServlet?province=海南" target="_self">海南</a></dd>

                <dd><a id="gx" title="广西" href="InfoServlet?province=广西" target="_self">广西</a></dd>

                <dd><a id="gz" title="贵州" href="InfoServlet?province=贵州" target="_self">贵州</a></dd>

                <dd><a id="yn" title="云南" href="InfoServlet?province=云南" target="_self">云南</a></dd>

                <dd><a id="sc" title="四川" href="InfoServlet?province=四川" target="_self">四川</a></dd>

                <dd><a id="cq" title="重庆" href="InfoServlet?province=重庆" target="_self">重庆</a></dd>

                <dd><a id="hun" title="湖南" href="InfoServlet?province=湖南" target="_self">湖南</a></dd>

                <dd><a id="hub" title="湖北" href="InfoServlet?province=湖北" target="_self">湖北</a></dd>

                <dd><a id="tw" title="台湾" href="InfoServlet?province=台湾" target="_self">台湾</a></dd>


            </dl>
        </div>
        <%--下分割线--%>
        <div class="ui divider horizontal" style="color: lightgray;bottom:0 ;padding-top: 30px"> <i class="angle down icon"></i></div>
        <%--分页按钮--%>
    </div>
    </div>
  </div>
  </body>
    <div>
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>
        <script type="text/javascript" src="js/lib/raphael-min.js"></script>
        <script type="text/javascript" src="js/res/chinaMapConfig.js"></script>
        <script type="text/javascript" src="js/map-min.js"></script>
        <script  type="text/javascript">

                    $('#gmap').transition('pulse');
        </script>

    </div>
</html>
