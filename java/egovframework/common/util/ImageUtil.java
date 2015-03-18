package egovframework.common.util;


import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.ConvolveOp;
import java.awt.image.Kernel;
import java.awt.image.PixelGrabber;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

import org.springframework.stereotype.Component;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

@Component
public class ImageUtil {
	
	// private static final Logger logger = LoggerFactory.getLogger(ImageUtil.class);
	
	/**
	 * 이미지 리사이즈
	 * 
	 * @param state
	 *            A = 가로기준 픽스 사이즈 B = 가로 / 세로 긴싸이즈 기준 리사이즈 C = 가로 세로 선택 리사이즈
	 * @param before
	 *            파일 경로
	 * @param uploadPath
	 *            업로드 될 경로
	 * @param width
	 *            가로 사이즈
	 * @param hight
	 *            세로 사이즈
	 * @return
	 */
	public String imgRsize(String state, String imgPath, String uploadPath, int width, int hight) {
		
		File filepath = new File(imgPath);
		
		String fileNm = "";
		
		// file 체크
		if (filepath.exists() && width > 0 && hight > 0) {
			
			try {
				if ("A".equals(state)) {
					fileNm = createThumbnail(imgPath, uploadPath, width, hight);
				} else if ("B".equals(state)) {
					createThumbnail2(imgPath, uploadPath, width, hight);
				} else if ("C".equals(state)) {
					resize(imgPath, uploadPath, width, hight);
				} // if
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // catch
		} // if
		return fileNm;
	}
	
	/**
	 * 
	 * @param oldimg
	 * @param uploadPath
	 * @param targetW
	 * @param targetH
	 * @throws InterruptedException
	 * @throws IOException
	 */
	protected String createThumbnail(String oldimg, String uploadPath, int targetW, int targetH) throws InterruptedException, IOException {
		
		String[] file = oldimg.split("/");
		String fileNm = file[file.length - 1];
		String newImg = "";
		
		if (targetH != 0) {
			newImg = fileNm.split("\\.")[0] + "_." + fileNm.split("\\.")[1];
		} else {
			newImg = fileNm;
		}
		
		File filepath = new File(uploadPath);
		if (!filepath.exists()) {
			filepath.mkdirs();
		}
		
		File thumFile = new File(uploadPath, newImg);
		
		if (!thumFile.exists()) {
			ImageIcon imgIcon = new ImageIcon(oldimg);
			createThumbnail(imgIcon.getImage(), uploadPath + newImg, targetW, targetH, false);
		}
		return newImg;
	}
	
	/**
	 * @param oldimg
	 * @param uploadPath
	 * @param targetW
	 * @param targetH
	 * @return
	 * @throws InterruptedException
	 * @throws IOException
	 */
	protected String createThumbnail2(String oldimg, String uploadPath, int targetW, int targetH) throws InterruptedException, IOException {
		
		String[] file = oldimg.split("/");
		String fileNm = file[file.length - 1];
		String newImg = "thum_" + fileNm.toLowerCase();
		
		File filepath = new File(uploadPath);
		if (!filepath.exists()) {
			filepath.mkdirs();
		}
		
		File thumFile = new File(uploadPath, newImg);
		
		if (!thumFile.exists()) {
			ImageIcon imgIcon = new ImageIcon(oldimg);
			newImg = createThumbnail2(imgIcon.getImage(), uploadPath + newImg, newImg, targetW, targetH, false, oldimg);
		}
		return newImg;
	}
	
	/**
	 * jpg 파일 저장처리
	 * 
	 * @param bi
	 * @param newImg
	 * @throws InterruptedException
	 * @throws IOException
	 */
	private static void saveJPEG(BufferedImage bi, String newImg) throws InterruptedException, IOException {
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(newImg);
			JPEGImageEncoder jpeg = JPEGCodec.createJPEGEncoder(fos);
			JPEGEncodeParam jep = jpeg.getDefaultJPEGEncodeParam(bi);
			jep.setQuality(1, false);
			jpeg.encode(bi, jep);
		} finally {
			if (fos != null)
				fos.close();
		}
	}
	
	/**
	 * 가로/세로 기준에따라 줄이기... 썸네일 만들기
	 * 
	 * @param oldImg
	 * @param newImg
	 * @param targetW
	 * @param targetH
	 * @param useSharpen
	 * @throws InterruptedException
	 * @throws IOException
	 */
	protected void createThumbnail(Image oldImg, String newImg, int targetW, int targetH, boolean useSharpen) throws InterruptedException, IOException {
		
		int oldW = oldImg.getWidth(null);
		int oldH = oldImg.getHeight(null);
		
		int newW = 0;
		int newH = 0;
		
		if (oldW > targetW) {
			newW = targetW;
			newH = (targetW * oldH) / oldW;
			// if (newH > targetH) {
			// newH = targetH;
			// }
		} else {
			newW = oldW;
			newH = oldH;
			// if (newH > targetH) {
			// newH = targetH;
			// }
		}
		
		String imgExt = getExtension(newImg);
		
		Image imgTarget = oldImg.getScaledInstance(newW, newH, Image.SCALE_FAST);
		ImageIcon imgIcon = new ImageIcon(imgTarget);
		
		if (targetH != 0) {
			if (newH > targetH)
				newH = targetH;
		}
		
		BufferedImage bi = new BufferedImage(newW, newH, BufferedImage.TYPE_INT_RGB);
		
		bi.createGraphics().drawImage(imgTarget, 0, 0, imgIcon.getImageObserver());
		if (useSharpen)
			bi = sharpen(bi);
		saveJPEG(bi, newImg);
		
		if ("jpg".equals(imgExt) || "jpeg".equals(imgExt)) {
			
		} else if (imgExt.equals("gif")) {
			// saveGIF(bi, newImg);
		}
	}
	
	/**
	 * @param oldImg
	 * @param newImg
	 * @param newIngName
	 * @param targetW
	 * @param targetH
	 * @param useSharpen
	 * @param strImg
	 * @return
	 * @throws InterruptedException
	 * @throws IOException
	 */
	protected String createThumbnail2(Image oldImg, String newImg, String newIngName, int targetW, int targetH, boolean useSharpen, String strImg) throws InterruptedException, IOException {
		
		try {
			File thumFile = new File(strImg);
			
			int oldW = oldImg.getWidth(null);
			int oldH = oldImg.getHeight(null);
			
			int newW = 0;
			int newH = 0;
			
			if (oldW > oldH) {// 가로가 크냐
				if (oldW > targetW) {
					newW = targetW;
					newH = (targetW * oldH) / oldW;
					if (newH > targetH) {
						// newW = (targetH * newW) / newH;
						newH = targetH;
					}
				} else {
					newW = oldW;
					newH = oldH;
					if (newH > targetH) {
						// newW = (targetH * newW) / newH;
						newH = targetH;
					}
				}
			} else {// 세로가 크냐
				if (oldH > targetH) {
					newH = targetH;
					newW = (targetH * oldW) / oldH;
				} else {
					newW = oldW;
					newH = oldH;
				}
			}
			
			String imgExt = getExtension(newImg);
			
			Image imgTarget = oldImg.getScaledInstance(newW, newH, Image.SCALE_FAST);
			ImageIcon imgIcon = new ImageIcon(imgTarget);
			
			BufferedImage bi = new BufferedImage(newW, newH, BufferedImage.TYPE_INT_RGB);
			
			bi.createGraphics().drawImage(imgTarget, 0, 0, imgIcon.getImageObserver());
			if (useSharpen)
				bi = sharpen(bi);
			saveJPEG(bi, newImg);
			
			if ("jpg".equals(imgExt) || "jpeg".equals(imgExt)) {
				
			} else if (imgExt.equals("gif")) {
				// saveGIF(bi, newImg);
			}
		} catch (Exception e) {
			System.out.println("###################");
			System.out.println(newIngName);
			newIngName = "";
			e.printStackTrace();
		}
		return newIngName;
	}
	
	/**
	 * @param oldimg
	 * @param uploadPath
	 * @param width
	 * @param height
	 * @return
	 * @throws IOException
	 */
	protected String resize(String oldimg, String uploadPath, int width, int height) throws IOException {
		
		int RATIO = 0;
		int SAME = -1;
		
		String newImg = "";
		try {
			String[] file = oldimg.split("/");
			String fileNm = file[file.length - 1];
			newImg = "thum_" + fileNm;
			
			File filepath = new File(uploadPath);
			if (!filepath.exists()) {
				filepath.mkdirs();
			}
			
			File src = new File(oldimg);
			File dest = new File(uploadPath, newImg);
			
			Image srcImg = null;
			String suffix = src.getName().substring(src.getName().lastIndexOf('.') + 1).toLowerCase();
			if (suffix.equals("bmp") || suffix.equals("png") || suffix.equals("gif")) {
				srcImg = ImageIO.read(src);
			} else {
				// BMP가 아닌 경우 ImageIcon을 활용해서 Image 생성
				// 이렇게 하는 이유는 getScaledInstance를 통해 구한 이미지를
				// PixelGrabber.grabPixels로 리사이즈 할때
				// 빠르게 처리하기 위함이다.
				srcImg = new ImageIcon(src.toURL()).getImage();
			}
			
			int srcWidth = srcImg.getWidth(null);
			int srcHeight = srcImg.getHeight(null);
			
			int destWidth = -1, destHeight = -1;
			
			if (width == SAME) {
				destWidth = srcWidth;
			} else if (width > 0) {
				destWidth = width;
			}
			
			if (height == SAME) {
				destHeight = srcHeight;
			} else if (height > 0) {
				destHeight = height;
			}
			
			if (width == RATIO && height == RATIO) {
				destWidth = srcWidth;
				destHeight = srcHeight;
			} else if (width == RATIO) {
				double ratio = ((double) destHeight) / ((double) srcHeight);
				destWidth = (int) ((double) srcWidth * ratio);
			} else if (height == RATIO) {
				double ratio = ((double) destWidth) / ((double) srcWidth);
				destHeight = (int) ((double) srcHeight * ratio);
			}
			
			Image imgTarget = srcImg.getScaledInstance(destWidth, destHeight, Image.SCALE_SMOOTH);
			int pixels[] = new int[destWidth * destHeight];
			PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, destWidth, destHeight, pixels, 0, destWidth);
			try {
				pg.grabPixels();
			} catch (InterruptedException e) {
				throw new IOException(e.getMessage());
			}
			BufferedImage destImg = new BufferedImage(destWidth, destHeight, BufferedImage.TYPE_INT_RGB);
			destImg.setRGB(0, 0, destWidth, destHeight, pixels, 0, destWidth);
			
			ImageIO.write(destImg, "jpg", dest);
			
		} catch (Exception e) {
			// System.out.println("###################");
			// System.out.println(newImg);
			newImg = "";
			e.printStackTrace();
		}
		return newImg;
	}
	
	protected BufferedImage sharpen(BufferedImage srcImg) {
		float[] SHARPEN3x3 = { 0.f, -1.f, 0.f, -1.f, 5.0f, -1.f, 0.f, -1.f, 0.f };
		BufferedImage dstbimg = new BufferedImage(srcImg.getWidth(), srcImg.getHeight(), BufferedImage.TYPE_INT_RGB);
		Kernel kernel = new Kernel(3, 3, SHARPEN3x3);
		ConvolveOp cop = new ConvolveOp(kernel, ConvolveOp.EDGE_NO_OP, null);
		return cop.filter(srcImg, dstbimg);
	}
	
	/**
	 * 확장자 확인
	 * 
	 * @param filename
	 * @return
	 */
	protected String getExtension(String filename) {
		if (filename != null) {
			int i = filename.lastIndexOf('.');
			if (i > 0 && i < filename.length() - 1) {
				return filename.substring(i + 1).toLowerCase();
			}
		}
		return null;
	}
	
}
