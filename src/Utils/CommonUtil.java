package Utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonUtil {

    public static String getTime(boolean dia){
        SimpleDateFormat format = new SimpleDateFormat( dia ? "yyyy-MM-dd" : "yyyyMMdd");
        Date curDate = new Date();
        return format.format(curDate);
    }
    public static String getTimeLong(boolean dia){
        SimpleDateFormat format = new SimpleDateFormat( dia ? "yyyy-MM-dd HH:mm:ss" : "yyyyMMdd HH:mm:ss");
        Date curDate = new Date();
        return format.format(curDate);
    }


}
