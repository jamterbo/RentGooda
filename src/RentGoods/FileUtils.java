package RentGoods;

import javax.servlet.http.Part;
import java.io.IOException;
import java.util.Collection;

/**
 * Created by LingHanchen on 17/5/6.
 */
public class FileUtils {
    public static String getFilename(Part part) throws InterruptedException, IOException {
        String type = part.getHeader("content-disposition");
        type = type.substring(type.lastIndexOf("."), type.lastIndexOf("\""));
        String filename = DateUtils.getStringDate() + type;
        return filename;
    }
}
