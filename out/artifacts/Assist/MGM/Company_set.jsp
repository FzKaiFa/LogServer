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
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="WebSide.FeedBack" %>
<%@ page import="Utils.Lg" %>
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
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<%
    //获得number
    Company company = (Company) request.getAttribute("company");
%>
<div class="form-group">
        <a for="email">姓名<%=company.getAppID()%></a>
        <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name">
    </div>
    <div class="form-group">
        <a for="pwd">电话:</a>
        <input type="text" class="form-control" id="phone" placeholder="Enter telephone" name="phone">
    </div>
    <div class="form-group">
        <a for="pwd">更新信息:</a>
        <input type="text" class="form-control" id="jieguo" placeholder="显示结果" name="phone">
    </div>
    <%--<a><% CT} %></a>--%>
    <div id="myDiv"></div>
    <button class="btn btn-primary" onclick="loadXMLDoc()">确定</button>
    <%--<button type="submit" class="btn btn-primary" onclick="loadXMLDoc()">确定</button>--%>
    <%--</form>--%>
    </div>

</body>


</html>
