package egovframework.common;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import egovframework.common.service.FileSupportService;
import egovframework.common.service.FileVO;
import egovframework.common.util.EgovProperties;
import egovframework.common.util.EgovStringUtil;
import egovframework.common.util.StringUtil;

/**
 * @Class Name : EgovImageProcessController.java
 * @Description :
 * @Modification Information
 *
 *    수정일       수정자         수정내용
 *    -------        -------     -------------------
 *    2009. 4. 2.     이삼섭
 *
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009. 4. 2.
 * @version
 * @see
 *
 */
@SuppressWarnings("serial")
@Controller
public class EgovImageProcessController extends HttpServlet {
    
    private static final Logger LOG = Logger.getLogger(EgovImageProcessController.class.getName());
    
    @Resource(name= "fileSupportService")
	private FileSupportService fileSupportService;

    /**
     * 첨부된 이미지에 대한 미리보기 기능을 제공한다.
     *
     * @param atchFileId
     * @param fileSn
     * @param sessionVO
     * @param model
     * @param response
     * @throws Exception
     */
    @RequestMapping("/cmm/fms/getImage.gn")
    public void getImageInf(SessionVO sessionVO, ModelMap model, Map<String, Object> commandMap, HttpServletResponse response,HttpServletRequest request) throws Exception {

		//@RequestParam("atchFileId") String atchFileId,
		//@RequestParam("fileSn") String fileSn,
		String atchFileId = StringUtil.getString((String)request.getParameter("atchFileId"));
		String fileKeyCd = StringUtil.getString((String)request.getParameter("fileKeyCd"));
		
		/*if(fileSn == null || fileSn.equals("") ){
			fileSn = "0";
		}*/
		
		if(atchFileId.equals("") || fileKeyCd.equals("")){
			return;
		}

		FileVO vo = new FileVO();

		/*vo.setAtchFileId(atchFileId);
		vo.setFile_key_cd(fileKeyCd);*/
		
		int intAtchFileid = Integer.parseInt(atchFileId);
		
		vo.setIndex_sq(intAtchFileid);
		vo.setTable_nm(fileKeyCd);

//		FileVO fvo = fileService.selectFileInf(vo);
		// LOG.info(EgovProperties.getProperty("IMG.PATH"));
		// LOG.info(fvo.getStreFileNm());
		
//		String fileLoaction = EgovProperties.getProperty("IMG.PATH") + fvo.getStreFileNm();
		
		FileVO fvo = fileSupportService.fileInfo(vo);

		// 2011.10.10 보안점검 후속조치
		File file = null;
		FileInputStream fis = null;

		BufferedInputStream in = null;
		ByteArrayOutputStream bStream = null;

		try {
		    file = new File(EgovProperties.getProperty("Globals.fileStorePath"), fvo.getChname_nm());
		    
		    fis = new FileInputStream(file);

		    in = new BufferedInputStream(fis);
		    bStream = new ByteArrayOutputStream();

		    int imgByte;
		    while ((imgByte = in.read()) != -1) {
		    	bStream.write(imgByte);
		    }

			String type = "";

			if (fvo.getFext_nm() != null && !"".equals(fvo.getFext_nm())) {
			    if ("jpg".equals(fvo.getFext_nm().toLowerCase())) {
			    	type = "image/jpeg";
			    } else {
			    	type = "image/" + fvo.getFext_nm().toLowerCase();
			    }
			} else {
			    LOG.debug("Image fileType is null.");
			}

			response.setHeader("Content-Type", type);
			response.setContentLength(bStream.size());

			bStream.writeTo(response.getOutputStream());

			response.getOutputStream().flush();
			response.getOutputStream().close();

			// 2011.10.10 보안점검 후속조치 끝
		} finally {
			if (bStream != null) {
				try {
					bStream.flush();
					bStream.close();
				} catch (Exception ignore) {
					LOG.debug("IGNORE: " + ignore.getMessage());
				}
			}
			if (in != null) {
				try {
					in.close();
				} catch (Exception ignore) {
					LOG.debug("IGNORE: " + ignore.getMessage());
				}
			}
			if (fis != null) {
				try {
					fis.close();
				} catch (Exception ignore) {
					LOG.debug("IGNORE: " + ignore.getMessage());
				}
			}
		}
    }
    
    
    @RequestMapping("/cmm/fms/getImageReSize.gn")
    public void getImageInfReSize(SessionVO sessionVO, ModelMap model, Map<String, Object> commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {

		String atchFileId = StringUtil.getString((String)request.getParameter("atchFileId"));
		//String fileSn = StringUtil.getString((String)request.getParameter("fileSn"));
		String fileKeyCd = StringUtil.getString((String)request.getParameter("fileKeyCd"));
		String rwidth = StringUtil.getString((String)request.getParameter("rwidth"));
		
		/*if(fileSn == null || fileSn.equals("") ){
			fileSn = "0";
		}*/
		
		if(atchFileId.equals("") || fileKeyCd.equals("")){
			return;
		}
		
		int width = 210;							//이미지 초기값지정		
		String fileNm = "_RESIZE";
		if(!StringUtil.getString(rwidth).equals("") && !StringUtil.getString(rwidth).equals("0") ){
			width = Integer.parseInt(rwidth);
		}
	
		FileVO vo = new FileVO();
		
		int intAtchFileid = Integer.parseInt(atchFileId);
		vo.setIndex_sq(intAtchFileid);
		
		//vo.setFileSn(fileSn);
//		vo.setFile_key_cd(fileKeyCd);
	
//		FileVO fvo = fileService.selectFileInf(vo);
		FileVO fvo = fileSupportService.fileInfo(vo);
		
		File file = new File(EgovProperties.getProperty("IMG.PATH"),  fvo.getChname_nm() + fileNm + "_" + width);
		
//		LOG.info("----------------------------1:"+EgovProperties.getProperty("IMG.PATH")+", 2:"+ fvo.getStreFileNm());
		if(!file.exists()){
			String orFile = EgovProperties.getProperty("IMG.PATH")+ fvo.getChname_nm();
			
			EgovImageProcessController.createThumbnail(orFile, orFile + fileNm + "_" + width, width);
			
		}
			
		FileInputStream fis = new FileInputStream(file);
	
		BufferedInputStream in = new BufferedInputStream(fis);
		ByteArrayOutputStream bStream = new ByteArrayOutputStream();
	
		int imgByte;
		while ((imgByte = in.read()) != -1) {
		    bStream.write(imgByte);
		}
		in.close();
	
		String type = "";
	
		if (fvo.getFext_nm() != null && !"".equals(fvo.getFext_nm())) {
		    if ("jpg".equals(EgovStringUtil.lowerCase(fvo.getFext_nm()))) {
		    	type = "image/jpeg"; 
		    } else {
		    	type = "image/" + EgovStringUtil.lowerCase(fvo.getFext_nm());
		    }
	
		} else {
		    LOG.debug("Image fileType is null.");
		}
	
		response.setHeader("Content-Type", type);
		response.setContentLength(bStream.size());
		
		bStream.writeTo(response.getOutputStream());
		
		response.getOutputStream().flush();
		response.getOutputStream().close();
    }
    
    /**
     * 이미지 리사이즈 version2!
     * 2013. 1. 4.
     * @param sessionVO
     * @param model
     * @param commandMap
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/cmm/fms/getImageReSizev2.gn")
    public void getImageInfReSize2(SessionVO sessionVO, ModelMap model, Map<String, Object> commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {

		String atchFileId = StringUtil.getString((String)request.getParameter("atchFileId"));
		//String fileSn = StringUtil.getString((String)request.getParameter("fileSn"));
		String fileKeyCd = StringUtil.getString((String)request.getParameter("fileKeyCd"));
		String rwidth = StringUtil.getString((String)request.getParameter("rwidth"));
		String rheight = StringUtil.getString((String)request.getParameter("rheight"));
		
		/*if(fileSn == null || fileSn.equals("") ){
			fileSn = "0";
		}*/
		
		if(atchFileId.equals("") || fileKeyCd.equals("")){
			return;
		}
		
		int width = 210;							//이미지 초기값지정
		int height = 500;
		String fileNm = "_RESIZE";
		if(!StringUtil.getString(rwidth).equals("") && !StringUtil.getString(rwidth).equals("0") ){
			width = Integer.parseInt(rwidth);
		}
		
		if(!StringUtil.getString(rheight).equals("") && !StringUtil.getString(rheight).equals("0") ){
			height = Integer.parseInt(rheight);
		}
	
		FileVO vo = new FileVO();
	
		//vo.setAtchFileId(atchFileId);
		int intAttchFileId = Integer.parseInt(atchFileId);
		vo.setIndex_sq(intAttchFileId);
		//vo.setFileSn(fileSn);
		//vo.setFile_key_cd(fileKeyCd);
	
		//FileVO fvo = fileService.selectFileInf(vo);
		FileVO fvo = fileSupportService.fileInfo(vo);
		
		File file = new File(EgovProperties.getProperty("IMG.PATH"),  fvo.getChname_nm() + fileNm + "_" + width);
		
//		LOG.info("----------------------------1:"+EgovProperties.getProperty("IMG.PATH")+", 2:"+ fvo.getStreFileNm());
		if(!file.exists()){
			String orFile = EgovProperties.getProperty("IMG.PATH")+ fvo.getChname_nm();
			
			EgovImageProcessController.createThumbnailv2(orFile, orFile + fileNm + "_" + width, width,height);
			
		}
			
		FileInputStream fis = new FileInputStream(file);
	
		BufferedInputStream in = new BufferedInputStream(fis);
		ByteArrayOutputStream bStream = new ByteArrayOutputStream();
	
		int imgByte;
		while ((imgByte = in.read()) != -1) {
		    bStream.write(imgByte);
		}
		in.close();
	
		String type = "";
	
		if (fvo.getFext_nm() != null && !"".equals(fvo.getFext_nm())) {
		    if ("jpg".equals(EgovStringUtil.lowerCase(fvo.getFext_nm()))) {
		    	type = "image/jpeg"; 
		    } else {
		    	type = "image/" + EgovStringUtil.lowerCase(fvo.getFext_nm());
		    }
	
		} else {
		    LOG.debug("Image fileType is null.");
		}
	
		response.setHeader("Content-Type", type);
		response.setContentLength(bStream.size());
		
		bStream.writeTo(response.getOutputStream());
		
		response.getOutputStream().flush();
		response.getOutputStream().close();
    }
 
    
	/*
	 * 리사이즈 가능한 파일 형식 jpg, bmp, png, gif
	 */
    @SuppressWarnings("restriction")
	private static void createThumbnail(String soruce, String target, int targetW) throws Exception {
    	
		Image imgSource = null;
		File fSource = new File(soruce);
		
		String suffix = soruce.substring(soruce.lastIndexOf('.')+1).toLowerCase();
		
		//if(suffix.equals("jpg") || suffix.equals("bmp") || suffix.equals("png") || suffix.equals("gif")) return;
		
		if ( suffix.equals("jpg")){
			imgSource = new ImageIcon(soruce).getImage();
		} else {
			imgSource = ImageIO.read(fSource);
		}

		int oldW = imgSource.getWidth(null);
		int oldH = imgSource.getHeight(null);

		int newW = targetW;
		int newH = (targetW * oldH) / oldW;

		Image imgTarget = imgSource.getScaledInstance(newW, newH, Image.SCALE_SMOOTH);

		int pixels[] = new int[newW * newH];

		PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, newW, newH, pixels, 0, newW);
		pg.grabPixels();

		BufferedImage bi = new BufferedImage(newW, newH, BufferedImage.TYPE_INT_RGB);
		bi.setRGB(0, 0, newW, newH, pixels, 0, newW);

		FileOutputStream fos = new FileOutputStream(target);

		JPEGImageEncoder jpeg = JPEGCodec.createJPEGEncoder(fos);

		JPEGEncodeParam jep = jpeg.getDefaultJPEGEncodeParam(bi);
		jep.setQuality(1, false);

		jpeg.encode(bi, jep);

		fos.close();
    }
    
    /**
     * 가로, 세로 사이즈를 받아서 썸네일을 만든다.
     * @param soruce
     * @param target
     * @param newW
     * @param newH
     * @throws Exception
     */
    private static void createThumbnail(String soruce, String target, int newW , int newH) throws Exception {
    	
    	Image imgSource = null;
		File fSource = new File(soruce);
		
		String suffix = soruce.substring(soruce.lastIndexOf('.')+1).toLowerCase();
		
		//if(suffix.equals("jpg") || suffix.equals("bmp") || suffix.equals("png") || suffix.equals("gif")) return;
		
		if ( suffix.equals("jpg")){
			imgSource = new ImageIcon(soruce).getImage();
		} else {
			imgSource = ImageIO.read(fSource);
		}
		
		Image imgTarget = imgSource.getScaledInstance(newW, newH, Image.SCALE_SMOOTH);

		int pixels[] = new int[newW * newH];

		PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, newW, newH, pixels, 0, newW);
		pg.grabPixels();

		BufferedImage bi = new BufferedImage(newW, newH, BufferedImage.TYPE_INT_RGB);
		bi.setRGB(0, 0, newW, newH, pixels, 0, newW);

		FileOutputStream fos = new FileOutputStream(target);

		JPEGImageEncoder jpeg = JPEGCodec.createJPEGEncoder(fos);

		JPEGEncodeParam jep = jpeg.getDefaultJPEGEncodeParam(bi);
		jep.setQuality(1, false);

		jpeg.encode(bi, jep);

		fos.close();
    	
    }
    
    
    /**
     * 가로, 세로 사이즈를 받아서 썸네일을 만든다. v2
     * @param soruce
     * @param target
     * @param newW
     * @param newH
     * @throws Exception
     */
    private static void createThumbnailv2(String soruce, String target, int newW , int newH) throws Exception {
    	
    	Image imgSource = null;
		File fSource = new File(soruce);
		
		String suffix = soruce.substring(soruce.lastIndexOf('.')+1).toLowerCase();
		
		if(suffix.equals("jpg") || suffix.equals("bmp") || suffix.equals("png") || suffix.equals("gif")) return;
		
		if ( suffix.equals("jpg")){
			imgSource = new ImageIcon(soruce).getImage();
		} else {
			imgSource = ImageIO.read(fSource);
		}
		
		Image imgTarget = imgSource.getScaledInstance(newW, newH, Image.SCALE_SMOOTH);

		int pixels[] = new int[newW * newH];

		PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, newW, newH, pixels, 0, newW);
		pg.grabPixels();

		BufferedImage bi = new BufferedImage(newW, newH, BufferedImage.TYPE_INT_RGB);
		bi.setRGB(0, 0, newW, newH, pixels, 0, newW);

		FileOutputStream fos = new FileOutputStream(target);

		JPEGImageEncoder jpeg = JPEGCodec.createJPEGEncoder(fos);

		JPEGEncodeParam jep = jpeg.getDefaultJPEGEncodeParam(bi);
		jep.setQuality(1, false);

		jpeg.encode(bi, jep);

		fos.close();
    	
    }
    
	/**
	 * 비율을 적용해서 썸네일을 생성
	 * 2012. 11. 14.
	 * @param soruce
	 * @param target
	 * @param targetW
	 * @param ratio
	 * @throws Exception
	 */
	private static void createRatioThumbnail(String soruce, String target, int targetW, String ratio) throws Exception {
    	
		Image imgSource = null;
		File fSource = new File(soruce);
		
		String suffix = soruce.substring(soruce.lastIndexOf('.')+1).toLowerCase();
		
		//if(suffix.equals("jpg") || suffix.equals("bmp") || suffix.equals("png") || suffix.equals("gif")) return;
		
		if ( suffix.equals("jpg")){
			imgSource = new ImageIcon(soruce).getImage();
		} else {
			imgSource = ImageIO.read(fSource);
		}
		
//		원본사이즈
		int imgW = imgSource.getWidth(null);
		int imgH = imgSource.getHeight(null);
		
//		비율
		int fixW = Integer.parseInt(ratio.substring(0,1));
		int fixH = Integer.parseInt(ratio.substring(1));
		
		int newW = 0;
		int newH = 0;
		
		if(imgW > targetW){				//원본사이즈가 지정사이즈보다 큰경우
			newW = targetW;
			newH = (targetW * fixH) / fixW;
		}else{
			newW = imgW;
			newH = (imgW * fixH) / fixW;
		}
		
		Image imgTarget = imgSource.getScaledInstance(newW, newH, Image.SCALE_SMOOTH);

		int pixels[] = new int[newW * newH];

		PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, newW, newH, pixels, 0, newW);
		pg.grabPixels();

		BufferedImage bi = new BufferedImage(newW, newH, BufferedImage.TYPE_INT_RGB);
		bi.setRGB(0, 0, newW, newH, pixels, 0, newW);

		FileOutputStream fos = new FileOutputStream(target);

		JPEGImageEncoder jpeg = JPEGCodec.createJPEGEncoder(fos);

		JPEGEncodeParam jep = jpeg.getDefaultJPEGEncodeParam(bi);
		
		jep.setQuality(1, false);

		jpeg.encode(bi, jep);

		fos.close();
    }
	
	
	/**
     * 첨부된 이미지에 대한 미리보기 기능을 제공한다. 디비없이
     *
     * @param atchFileId
     * @param fileSn
     * @param sessionVO
     * @param model
     * @param response
     * @throws Exception
     */
    @RequestMapping("/cmm/fms/getImage2.gn")
    public void getImageInf2(SessionVO sessionVO, ModelMap model, Map<String, Object> commandMap, HttpServletResponse response,HttpServletRequest request) throws Exception {

		String file_path = StringUtil.getString((String)request.getParameter("file_path"));
		if(file_path.indexOf("/file227") == 0)
			file_path = "/home/babyfair" + file_path;
		String file_name = StringUtil.getString((String)request.getParameter("file_name"));
		String file_ext = StringUtil.getString((String)request.getParameter("file_ext"));
		if(file_name.lastIndexOf(".")>=0)
			file_ext = file_name.substring(file_name.lastIndexOf(".")+1, file_name.length());
		
		if(file_path.equals("") || file_name.equals("")){
			return;
		}
		
		// 2011.10.10 보안점검 후속조치
		File file = null;
		FileInputStream fis = null;

		BufferedInputStream in = null;
		ByteArrayOutputStream bStream = null;

		try {
		    file = new File(file_path, file_name);
		    
		    fis = new FileInputStream(file);

		    in = new BufferedInputStream(fis);
		    bStream = new ByteArrayOutputStream();

		    int imgByte;
		    while ((imgByte = in.read()) != -1) {
		    	bStream.write(imgByte);
		    }

			String type = "";

			if (!"".equals(file_ext)) {
			    if ("jpg".equals(file_ext.toLowerCase())) {
			    	type = "image/jpeg";
			    } else {
			    	type = "image/" + file_ext.toLowerCase();
			    }
			} else {
			    LOG.debug("Image fileType is null.");
			}

			response.setHeader("Content-Type", type);
			response.setContentLength(bStream.size());

			bStream.writeTo(response.getOutputStream());

			response.getOutputStream().flush();
			response.getOutputStream().close();

			// 2011.10.10 보안점검 후속조치 끝
		} finally {
			if (bStream != null) {
				try {
					bStream.flush();
					bStream.close();
				} catch (Exception ignore) {
					LOG.debug("IGNORE: " + ignore.getMessage());
				}
			}
			if (in != null) {
				try {
					in.close();
				} catch (Exception ignore) {
					LOG.debug("IGNORE: " + ignore.getMessage());
				}
			}
			if (fis != null) {
				try {
					fis.close();
				} catch (Exception ignore) {
					LOG.debug("IGNORE: " + ignore.getMessage());
				}
			}
		}
    }
    

    
    @RequestMapping("/cmm/fms/getImageReSize3.gn")
    public void getImageInfReSize3(SessionVO sessionVO, ModelMap model, Map<String, Object> commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {

		String file_path = StringUtil.getString((String)request.getParameter("file_path"));
		if(file_path.indexOf("/file227") == 0)
			file_path = "/home/babyfair" + file_path;
		String file_name = StringUtil.getString((String)request.getParameter("file_name"));
		String file_ext = StringUtil.getString((String)request.getParameter("file_ext"));
		if(file_name.lastIndexOf(".")>=0 && file_ext.equals(""))
			file_ext = file_name.substring(file_name.lastIndexOf(".")+1, file_name.length());
		String rwidth = StringUtil.getString((String)request.getParameter("rwidth"));
		
		if(file_path.equals("") || file_name.equals("")){
			return;
		}
		File filex = new File(file_path, file_name);
		BufferedImage bi = ImageIO.read( filex );
		int width = bi.getWidth();							//이미지 초기값지정
		LOG.info("width="+width);
		String fileNm = "_RESIZE";
		if(!StringUtil.getString(rwidth).equals("") && !StringUtil.getString(rwidth).equals("0") ){
			width = Integer.parseInt(rwidth);
		}
	
		File file = new File(file_path,  file_name + fileNm + "_" + width);
		
		if(!file.exists()){
			String orFile = file_path+ file_name;
			
			EgovImageProcessController.createThumbnail(orFile, orFile + fileNm + "_" + width, width);
		}
		
			
		FileInputStream fis = new FileInputStream(file);
	
		BufferedInputStream in = new BufferedInputStream(fis);
		ByteArrayOutputStream bStream = new ByteArrayOutputStream();
	
		int imgByte;
		while ((imgByte = in.read()) != -1) {
		    bStream.write(imgByte);
		}
		in.close();
	
		String type = "";
	
		if (!"".equals(file_ext)) {
		    if ("jpg".equals(EgovStringUtil.lowerCase(file_ext))) {
		    	type = "image/jpeg"; 
		    } else {
		    	type = "image/" + EgovStringUtil.lowerCase(file_ext);
		    }
	
		} else {
		    LOG.debug("Image fileType is null.");
		}
	
		response.setHeader("Content-Type", type);
		response.setContentLength(bStream.size());
		
		bStream.writeTo(response.getOutputStream());
		
		response.getOutputStream().flush();
		response.getOutputStream().close();
    }
    
    @RequestMapping("/cmm/fms/getImageReSize4.gn")
    public void getImageInfReSize4(SessionVO sessionVO, ModelMap model, Map<String, Object> commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {

		String file_urls = StringUtil.getString((String)request.getParameter("urls"));
		String[] array;
		array = file_urls.split("=");
		LOG.info("111="+array[0]);
		
	    String file_path = StringUtil.getString((String)array[0]);
		if(file_path.indexOf("/file227") == 0)
			file_path = "/home/babyfair" + file_path;
		String file_name = StringUtil.getString((String)array[1]);
		String file_ext = StringUtil.getString((String)array[2]);
		if(file_name.lastIndexOf(".")>=0 && file_ext.equals(""))
			file_ext = file_name.substring(file_name.lastIndexOf(".")+1, file_name.length());
		String rwidth = StringUtil.getString((String)request.getParameter("rwidth"));
		
		if(file_path.equals("") || file_name.equals("")){
			return;
		}
		File filex = new File(file_path, file_name);
		BufferedImage bi = ImageIO.read( filex );
		int width = bi.getWidth();							//이미지 초기값지정
		LOG.info("width="+width);
		String fileNm = "_RESIZE";
		if(!StringUtil.getString(rwidth).equals("") && !StringUtil.getString(rwidth).equals("0") ){
			width = Integer.parseInt(rwidth);
		}
	
		File file = new File(file_path,  file_name + fileNm + "_" + width);
		
		if(!file.exists()){
			String orFile = file_path+ file_name;
			
			EgovImageProcessController.createThumbnail(orFile, orFile + fileNm + "_" + width, width);
		}
		
			
		FileInputStream fis = new FileInputStream(file);
	
		BufferedInputStream in = new BufferedInputStream(fis);
		ByteArrayOutputStream bStream = new ByteArrayOutputStream();
	
		int imgByte;
		while ((imgByte = in.read()) != -1) {
		    bStream.write(imgByte);
		}
		in.close();
	
		String type = "";
	
		if (!"".equals(file_ext)) {
		    if ("jpg".equals(EgovStringUtil.lowerCase(file_ext))) {
		    	type = "image/jpeg"; 
		    } else {
		    	type = "image/" + EgovStringUtil.lowerCase(file_ext);
		    }
	
		} else {
		    LOG.debug("Image fileType is null.");
		}
	
		response.setHeader("Content-Type", type);
		response.setContentLength(bStream.size());
		
		bStream.writeTo(response.getOutputStream());
		
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
    }
}

