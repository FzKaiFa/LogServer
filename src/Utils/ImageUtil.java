package Utils;


import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class ImageUtil {

    /**
     * 将图片转换成Base64编码
     * @author lx
     * @param imgFile 待处理图片
     * @return
     */
//    public static String getImgStr(String imgFile){
//        //将图片文件转化为字节数组字符串，并对其进行Base64编码处理
//        InputStream in = null;
//        byte[] data = null;
//        //读取图片字节数组
//        try
//        {
//            in = new FileInputStream(imgFile);
//            data = new byte[in.available()];
//            in.read(data);
//            in.close();
//        }
//        catch (IOException e)
//        {
//            e.printStackTrace();
//        }
//        return new String(Base64.encodeBase64(data));
//    }



    /**
     * 对字节数组字符串进行Base64解码并生成图片
//     * @param imgStr 图片数据
//     * @param imgFilePath 保存图片全路径地址
     * @return
     */

//    public static boolean generateImage(String imgStr,String imgFilePath){
//        //
//        if (imgStr == null) //图像数据为空
//            return false;
//
//        try
//        {
//            //Base64解码
//            byte[] b = Base64.decodeBase64(imgStr);
//            for(int i=0;i<b.length;++i)
//            {
//                if(b[i]<0)
//                {//调整异常数据
//                    b[i]+=256;
//                }
//            }
//            //生成jpeg图片
//            OutputStream out = new FileOutputStream(imgFilePath);
//            out.write(b);
//            out.flush();
//            out.close();
//            return true;
//        }
//        catch (Exception e)
//        {
//            return false;
//        }
//    }

    //将base64转换为图片 存在指定位置 返回list
    public List<File> baseToImage(List imgbase) {
        String imagepath= "";
        List<File> files = new ArrayList<>();
        for(int i = 0;i<imgbase.size();i++) {
            String image=(String) imgbase.get(i);
            imagepath="D:/job/image/basetoimg"+i+".jpg";
            //base64 生成图片
//            generateImage(image,imagepath);
            File file = new File(imagepath);
            files.add(file);
        }
	        /*	//统一图片大小
        		ImageResizer ir=new ImageResizer();
	        	ImageIcon imageIcon = new ImageIcon("D:/image/basetoimg0.jpg");
     	        int iconWidth = imageIcon.getIconWidth();
     	        int iconHeight = imageIcon.getIconHeight();
     	    	try {
					ir.resizeImage(imagepath,imagepath,iconWidth,iconHeight);
				} catch (IOException e) {

					e.printStackTrace();
				}*/
        return  files;
    }
    public static void saveBtye2Img(){

    }
    /**
     * 将图片写入到磁盘
     * @param img 图片数据流
     * @param fileName 文件保存时的名称
     */
    public static void writeImageToDisk(byte[] img, String fileName){
        try {
            File file = new File("C:\\" + fileName);
            FileOutputStream fops = new FileOutputStream(file);
            fops.write(img);
            fops.flush();
            fops.close();
            System.out.println("图片已经写入到C盘");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    /**
     * 根据地址获得数据的字节流
     * @param strUrl 网络连接地址
     * @return
     */
    public static byte[] getImageFromNetByUrl(String strUrl){
        try {
            URL url = new URL(strUrl);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5 * 1000);
            InputStream inStream = conn.getInputStream();//通过输入流获取图片数据
            byte[] btImg = readInputStream(inStream);//得到图片的二进制数据
            return btImg;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    /**
     * 从输入流中获取数据
     * @param inStream 输入流
     * @return
     * @throws Exception
     */
    public static byte[] readInputStream(InputStream inStream) throws Exception{
        ByteArrayOutputStream outStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int len = 0;
        while( (len=inStream.read(buffer)) != -1 ){
            outStream.write(buffer, 0, len);
        }
        inStream.close();
        return outStream.toByteArray();
    }
}
