package egovframework.common.util;


//import  java.awt.Graphics2D;
import  java.awt.Image;
//import  java.awt.image.BufferedImage;
import  java.io.File;
import  java.io.FileOutputStream;
//import  java.io.IOException;
import  java.io.InputStream;
import  java.net.URL;
import  java.net.URLConnection;

//import  javax.imageio.ImageIO;
//import  javax.media.jai.JAI;
//import  javax.media.jai.RenderedOp;

import org.springframework.stereotype.Component;

@Component
public class  UrlImageUtil  {

	public  Image  imgA;
	public  URL  imageUrl;
    public  double  max_width  =  100d;
    public  double  max_height  =  140d;
    public  double  ratio_width;
    public  double  ratio_height;
    public  double  ratio;
    public  int  stand;
    public  int  src_x;
    public  int  src_y;
    public  int  dst_width;        
    public  int  dst_height;
    
    /**
     * 호출방법
     *  UrlImageUtil ui = new UrlImageUtil();
     *	ui.imageUrl = new URL("http://postfiles6.naver.net/20121017_117/chozlove_1350460148968uFQ9N_JPEG/DSC01971.JPG?type=w3");
     *	ui.getImageSize(저장위치+파일명);
     **/

    public  String  getType()  {
            String  strType  =  null;
            try  {
                    URLConnection  urlLinkConnection  =  imageUrl.openConnection();
                    urlLinkConnection.setAllowUserInteraction(false);
                    InputStream  in  =  imageUrl.openStream();
                    strType  =  urlLinkConnection.guessContentTypeFromStream(in);
                    return  strType;
            }  catch  (Exception  me)  {
            }
            return  strType;

    }

    public  int  getImageSize(String path)  {
            int  lenSize  =  0;
            try  {
                    InputStream  in  =  imageUrl.openStream();
                    FileOutputStream  out  =  new  FileOutputStream(path);

                    byte[]  buf  =  new  byte[1024];
                    int  len;
                    lenSize  =  0;
                    while  ((len  =  in.read(buf))  >  0)  {
                            lenSize  +=  len;
                            out.write(buf,  0,  len);
                    }
                    out.close();
                    in.close();
                    return  lenSize;
            }  catch  (Exception  me)  {
            }
            return  lenSize;
    }
    
    public  String  getImageName()  {
    	File  check_file  =  new  File(imageUrl.toString());
    	String file_nm = check_file.getName();
    	if(file_nm.indexOf("?")>=0)
    		return  check_file.getName().substring(0, check_file.getName().indexOf("?")).toLowerCase();
    	else
    		return  check_file.getName().toLowerCase();
    }
    
//    public  void  createImage(int  zoom, String path, String fn)  throws  IOException  //  썸네일  이미지를  생성하는  메서드
//    {
//            String f1=fn.substring(0, fn.lastIndexOf('.')).toLowerCase();
//            String f2=fn.substring(fn.lastIndexOf('.') + 1).toLowerCase();
//            File  save  =  new  File(path+f1+"_thumb."+f2);  //  썸네일  이미지  파일
//            RenderedOp  rOp  =  JAI.create("fileload",  path+fn);  //  loadFile는                
//            BufferedImage  im  =  rOp.getAsBufferedImage();
//            
//            ratio_width  =  im.getWidth()/max_width;
//            ratio_height  =  im.getHeight()/max_height;
//            
//            if(ratio_width  <  ratio_height){
//                    ratio  =  ratio_width;
//                    stand  =  1;
//            }else{
//                    ratio  =  ratio_height;
//                    stand  =  2;
//            }
//
//            if(ratio  >  1){
//
//                    dst_width  =  (int)  Math.round((im.getWidth()/ratio));
//                    dst_height  =  (int)  Math.round((im.getHeight()/ratio));
//
//            }else{
//
//                    dst_width  =  im.getWidth();
//                    dst_height  =  im.getHeight();        
//
//            }                
//
//            int  width  =  dst_width;
//            int  height  =  dst_height;
//            
//            System.out.println(im.getWidth());
//            System.out.println(im.getHeight());
//            System.out.println(ratio);
//            System.out.println(width);
//            System.out.println(height);
//            
//            Image  imgTarget  =  im.getScaledInstance(width,  height,  Image.SCALE_SMOOTH);                
//
//            BufferedImage  thumb  =  new  BufferedImage(width,  height,
//                            BufferedImage.TYPE_INT_RGB);  //  메모리에  이미지  공간을  생성                
//            
//            Graphics2D  g2  =  thumb.createGraphics();                
//            g2.drawImage(imgTarget,  0,  0,  width,  height,  null);
//            ImageIO.write(thumb,  "jpg",  save);  //  메모리에  그린이미지를  파일로  저장
//    }
}