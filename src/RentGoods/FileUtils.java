package RentGoods;

import javax.imageio.ImageIO;
import javax.servlet.http.Part;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.Collection;

/**
 * Created by LingHanchen on 17/5/6.
 */
public class FileUtils {
    //获取以当前时间为名字的文件名
    public static String getFilename(Part part) throws InterruptedException, IOException {
        String type = part.getHeader("content-disposition");
        type = type.substring(type.lastIndexOf("."), type.lastIndexOf("\""));
        String filename = DateUtils.getStringDate() + type;
        return filename;
    }
    //获取文件路径
    public static String getFilePath(String directory){
        return directory+DateUtils.getYear()+"/"+DateUtils.getMonth()+"/"+DateUtils.getDay()+"/";
    }
    //下载文件到对应路径
    public static void downloadFile(InputStream in,String rootpath,String filename) throws IOException {
        File file = new File(rootpath);
        if(!file.exists()){
            file.mkdirs();
        }
        file = new File(rootpath+filename);
        BufferedInputStream reader = new BufferedInputStream(in);
        FileOutputStream writer = new FileOutputStream(file);
        byte[] data = new byte[1024];
        int flag = reader.read(data,0,data.length);
        while (flag!=-1){
            writer.write(data);
            flag = reader.read(data,0,data.length);
        }
        writer.flush();
        reader.close();
        writer.close();
    }

    public static void cutImage(String filepath,int x,int y,int width,int height) throws IOException {
        File image = new File(filepath);
        String fileType = filepath.substring(filepath.lastIndexOf(".")+1);
        BufferedImage cutimage = ImageIO.read(image);
        cutimage = cutimage.getSubimage(x,y,width,height);
        image.delete();
        ImageIO.write(cutimage,fileType,image);
    }
}
