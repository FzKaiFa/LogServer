<%--
  Created by IntelliJ IDEA.
  User: NB
  Date: 2017/8/7
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" import="Bean.FeedBackBean" import="WebSide.WebDao"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.sun.org.apache.xpath.internal.operations.String" %>
<%@ page import="WebSide.FeedBack" %>
<html>
<head>
    <title>注册用户管理</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>

    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link type="text/javascript" src="js/swiper.min.js">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
            text-align:center;
            margin: 50px;
        }
    </style>
</head>
<body>
<%--<jsp:include page="headLayout.jsp"/>--%>
<%--
<%
    WebDao aa = new WebDao();
//    List list = (List) request.getAttribute("pl_list");
    List list = aa.getRegister();


    for (int i = 0; i < list.size(); i++) {
        RegisterBean rs = (RegisterBean) list.get(i);
%>--%>
<%--<%
    String tips = (String) request.getAttribute("tips");
%>
<h5 ><%=tips%></h5>--%>
<%--<jsp:include page="item_TopNavbar.jsp"/>--%>


<div id="demo" class="carousel slide" data-ride="carousel">

    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/ztkj.jpg">
        </div>
        <div class="carousel-item">
            <img src="img/jjfa.jpg">
        </div>
        <div class="carousel-item">
            <img src="img/lc.jpg">
        </div>
    </div>

    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
    <!-- 控制按钮 -->
    <div style="text-align:center;">
        <input type="button" class="btn start-slide" value="Start">
        <input type="button" class="btn pause-slide" value="Pause">
        <input type="button" class="btn prev-slide" value="Previous Slide">
        <input type="button" class="btn next-slide" value="Next Slide">
        <input type="button" class="btn slide-one" value="Slide 1">
        <input type="button" class="btn slide-two" value="Slide 2">
        <input type="button" class="btn slide-three" value="Slide 3">
    </div>
</div>


<script>
    $(function(){
        // 初始化轮播
        $(".start-slide").click(function(){
            $("#myCarousel").carousel('cycle');
        });
        // 停止轮播
        $(".pause-slide").click(function(){
            $("#myCarousel").carousel('pause');
        });
        // 循环轮播到上一个项目
        $(".prev-slide").click(function(){
            $("#myCarousel").carousel('prev');
        });
        // 循环轮播到下一个项目
        $(".next-slide").click(function(){
            $("#myCarousel").carousel('next');
        });
        // 循环轮播到某个特定的帧
        $(".slide-one").click(function(){
            $("#myCarousel").carousel(0);
        });
        $(".slide-two").click(function(){
            $("#myCarousel").carousel(1);
        });
        $(".slide-three").click(function(){
            $("#myCarousel").carousel(2);
        });
    });
</script>

<!-- 底部布局-->
<div class="jumbotron text-center" style="margin-bottom:0">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <h3> 关于我们</h3>
                <li>公司介绍</li>
                <li>公司介绍</li>
                <li>公司介绍</li>
                <li>公司介绍</li>
            </div>

            <div class="col-sm-4">
                <h3> 关于我们</h3>
                <li>公司介绍</li>
                <li>公司介绍</li>
                <li>公司介绍</li>
                <li>公司介绍</li>
            </div>
            <div class="col-sm-4">
                <h3> 关于我们</h3>
                <li>公司介绍</li>
                <li>公司介绍</li>
                <li>公司介绍</li>
                <li>公司介绍</li>
            </div>
        </div>
    </div>
</div>

<%--<table border="0" bgcolor="ccceee" width="750" style="height: 161px;">
    <tr bgcolor="CCCCCC" align="center">
        <td style="height: 30px;width:80px ">用户码</td>
        <td style="height: 30px;width:180px ">手机IMIE码</td>
        <td style="height: 30px;width:80px ">版本号</td>
        <td style="height: 30px;width:80px ">操作</td>

    </tr>

    <tr align="center">
        <td style="height: 45px; width:80px"><%=rs.getRegister_code() %>
        </td>
        <td style="height: 45px; width:180px"><%=rs.getVal1() %>
        </td>
        <td style="height: 45px; width:80px"><%=rs.getVal2() %>
        </td>
        &lt;%&ndash;<td style="height: 45px;width:80px"><%=rs.getLast_use_date() %></td>&ndash;%&gt;
        <td width="80px" align="center"><a href="RegisterDelete?json=<%=rs.getRegister_code() %>">删除</a></td>
    </tr>
    <%} %>

</table>--%>
</body>


</html>
