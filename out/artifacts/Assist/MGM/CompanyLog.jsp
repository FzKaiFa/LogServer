<%--
  Created by IntelliJ IDEA.
  User: NB
  Date: 2017/8/7
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" import="Bean.RegisterBean" import="WebSide.WebDao"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="WebSide.CompanyDao" %>
<%@ page import="Bean.Company" %>
<%@ page import="Utils.BaseData" %>
<%@ page import="Utils.ExcelExport" %>
<%@ page import="Utils.HttpRequestUtils" %>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>
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
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
<jsp:include page="../headLayout.jsp"/>
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

<%
    CompanyDao aa = new CompanyDao();
//    List list = (List) request.getAttribute("pl_list");
    List list = aa.getCompany();
%>

<div class="container" style="margin-top: 88px">
    <div  class="card">
        <%--<div class="dropdown">--%>
            <select name="citySel" id="citySel" onchange="checkCp()" class="select">
            <option value="">选择项目</option>
                <%
                    if (list==null){
                %><div class="alert alert-info"> 列表数据为空</div><%
                    return;
                }
                for (int i = 0; i < list.size(); i++) {
                    Company rs = (Company) list.get(i);
            %>
                <option value="<%=rs.getRemark()%>"><%=rs.getCompanyName()%></option>
                <%}%>
            </select>
            <%--<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                公司名称
            </a>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item" href="#">菜单1</a>
                <%
                    if (list==null){
                %><div class="alert alert-info"> 列表数据为空</div><%
                    return;
                }
                for (int i = 0; i < list.size(); i++) {
                    Company rs = (Company) list.get(i);
            %>
                <a class="dropdown-item" href="#"><%=rs.getCompanyName()%></a>
                <%}%>
            </div>--%>
        <%--</div>--%>

        <div class="card-body">
            <a >备注:</a>
                <%--<input type="text" class="form-control" rows="5" id="remark" placeholder="Enter telephone" name="remark"--%>
                <%--value="<%=company.getRemark()%>">--%>
            <textarea class="form-control" rows="15" id="remark"  name="remark"></textarea>

            <%--<table class="table">
                <thead>
                <tr>
                    <th>公司名称</th>
                    <th>APP版本号</th>
                    <th>AppID</th>
                    <th>公司地址</th>
                    <th>时间控制日期</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if (list==null){
                        %><div class="alert alert-info"> 列表数据为空</div><%
                        return;
                    }
                    for (int i = 0; i < list.size(); i++) {
                        Company rs = (Company) list.get(i);
                %>

                <tr>
                    <td><%=rs.getCompanyName() %></td>
                    <td><%=rs.getAppVersion() %></td>
                    <td><%=rs.getAppID() %></td>
                    <td><%=rs.getAddress() %></td>
                    <td><%=rs.getEndTime() %></td>
                    &lt;%&ndash;<td style="height: 45px;width:80px"><%=rs.getLast_use_date() %></td>&ndash;%&gt;
                        <td><a href="../company_find?json=<%=rs.getAppID()%>">管理</a></td>
                </tr>
                </tbody>
                <%} %>
            </table>--%>
        </div>

    </div>
</div>
<script type="text/javascript">
function checkCp(){
    var  Sel=document.getElementById("citySel");
    var index=Sel.selectedIndex;
    var val = Sel.options[index].value;
    var txt = Sel.options[index].text;
    document.getElementById('remark').innerText=val;

//    document.getElementById('hh').innerHTML = '删除成功'+val
//    var options=$("#my_level-name option:selected");
//    var ea_id=options.val(); //拿到选中项的值

    HttpRequestUtils.sendGet("http://192.168.0.136:8084/Assist/company_find?json="+val);

<%--&lt;%&ndash;%>
<%--boolean okDelete = companyDao.deleteCompany(company.getAppID());--%>
<%--if (!okDelete){--%>

<%--%>--%>
<%--//        alert("删除成功");--%>
<%--window.self.location = "MGM/CompanyList.jsp";--%>
<%--//        document.getElementById("tips").value = "删除成功"--%>
<%--&lt;%&ndash;%>
<%--}else{--%>
<%--%>--%>

<%--window.self.location = "MGM/CompanyList.jsp";--%>
<%--alert("删除失败");&lt;%&ndash;%>
<%--}--%>
<%--%>--%>
}
</script>
</body>


</html>
