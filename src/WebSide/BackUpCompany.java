package WebSide;

import Bean.Company;
import Utils.ExcelExport;
import Utils.Lg;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 用于更新时间控制表的当前时间
 */
@WebServlet(urlPatterns = "/BackUpCompany")
public class BackUpCompany extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        Lg.e("数据备份");
        CompanyDao webDao = new CompanyDao();
        List<Company> list = webDao.getCompany();
        String[] fields = {"公司名称","程序ID","版本号","创建时间"};
        ExcelExport export = new ExcelExport();
        HSSFWorkbook wb = export.generateExcel();
        wb = export.generateCompanySheet(wb, "项目备份信息", fields, list);
        export.export(wb, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
