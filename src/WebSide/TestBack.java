package WebSide;

import Bean.BackData;
import Utils.CommonJson;
import Utils.HttpRequestUtils;
import Utils.JDBCUtil;
import Utils.Lg;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 用于更新时间控制表的当前时间
 */
@WebServlet(urlPatterns = "/TestBack")
public class TestBack extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        Lg.e("到达TestBack");
        String paramter = request.getParameter("name");
        Lg.e("到达TestBack"+paramter);
        String url = "http://oa.o-in.me:9001/ena13_manages/"+paramter+".json";
        String getJson = HttpRequestUtils.sendGet(url);
        Lg.e("得到json数据",getJson);
        request.setAttribute("jsonback", new BackData(getJson));
        request.getRequestDispatcher("testMsgResult.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
