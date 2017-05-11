package RentGoods;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by LingHanchen on 17/5/6.
 */
public class DateUtils {
    //获取以yyyyMMddHHmmss为格式的日期字符串
    public static String getStringDate(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        return sdf.format(new Date());
    }
    //获取年份
    public static String getYear(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
        return sdf.format(new Date());
    }
    //获取月份
    public static String getMonth(){
        SimpleDateFormat sdf = new SimpleDateFormat("MM");
        return sdf.format(new Date());
    }
    //获取日
    public static String getDay(){
        SimpleDateFormat sdf = new SimpleDateFormat("dd");
        return sdf.format(new Date());
    }
}
