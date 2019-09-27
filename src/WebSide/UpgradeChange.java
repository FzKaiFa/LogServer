package WebSide;

import Bean.UpgradeBean;
import Utils.Lg;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 用于更新时间控制表的当前时间
 */
@WebServlet(urlPatterns = "/UpgradeChange")
public class UpgradeChange extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        Lg.e("进入公司信息修改");
        String company_name = request.getParameter("company_name");
        String app_version = request.getParameter("app_version");
        String app_id = request.getParameter("app_id");
        String upgrade_url = request.getParameter("upgrade_url");
        String upgrade_log = request.getParameter("upgrade_log");
        String upgrade_time = request.getParameter("upgrade_time");
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        Date curDate = new Date();
//        String create_time = format.format(curDate);
        UpgradeBean company = new UpgradeBean(
                company_name,
                app_version,
                app_id,
                upgrade_log,upgrade_time,upgrade_url);
        Lg.e("得到修改的公司",company);
        UpgradeDao webDao = new UpgradeDao();
        boolean ok = webDao.changeUpgrade(company);
        if (ok) {
            response.sendRedirect("MGM/UpgradeList.jsp");
        } else {
            response.sendRedirect("errorHttp.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
