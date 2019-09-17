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
<%@ page import="WebSide.FeedBack" %>
<%@ page import="WebSide.CompanyDao" %>
<%@ page import="Bean.Company" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
</head>
<body>
<%
    CompanyDao aa = new CompanyDao();
//    List list = (List) request.getAttribute("pl_list");
    String companyNum = aa.getCompanyNum();

%>
<div class="container" style="margin-top:30px">
    <div class="row">

        <%--<div class="col-sm-4">--%>
        <div class="column card" style="margin: 16px">
            <div class="card-body">
                <%--<button type="submit" class="btn btn-primary"><a class="box" style="color: black" href="Case.jsp" target="ManageRight">首页</a></button>--%>

                <h3 class="card-text"><a class="box" href="Home.jsp" target="ManageRight">欢迎来到项目管理系统<%=companyNum%></a></h3>
                <%--<a href="#" class="card-link">Another link</a>--%>
            </div>
        </div>
        <%--</div>--%>
    </div>
</div>
</body>


</html>
