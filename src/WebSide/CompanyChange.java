package WebSide;

import Bean.Company;
import Utils.Lg;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 用于更新时间控制表的当前时间
 */
@WebServlet(urlPatterns = "/CompanyChange")
public class CompanyChange extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        Lg.e("进入--公司信息修改");
        String company_name = request.getParameter("company_name");
        String app_version = request.getParameter("app_version");
        String app_version2 = request.getParameter("app_version2");
        String app_version3 = request.getParameter("app_version3");
        String app_id = request.getParameter("app_id");
        String kd_version = request.getParameter("kd_version");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String end_time = request.getParameter("end_time");
        String img_logo_url = request.getParameter("img_logo_url");
        String user_max = request.getParameter("user_max");
        String remark = request.getParameter("remark");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date curDate = new Date();
        String create_time = format.format(curDate);
        Company company = new Company(company_name,app_version,app_version2,app_version3,kd_version,app_id,img_logo_url,phone,address,remark,end_time,"0",create_time,user_max);
        Lg.e("得到修改的公司",company);
        CompanyDao webDao = new CompanyDao();
        boolean ok = webDao.changeCompany(company);
        if (ok) {
            response.sendRedirect("MGM/CompanyList.jsp");
        } else {
            response.sendRedirect("errorHttp.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
