package egovframework.common.service;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import egovframework.common.util.EgovProperties;
import egovframework.common.util.EgovWebUtil;

/**
 * @Class Name : EgovFileMngUtil.java
 * @Description : 메시지 처리 관련 유틸리티
 * @Modification Information
 * 
 *               수정일 수정자 수정내용 ------- -------- ---------------------------
 *               2009.02.13 이삼섭 최초 생성 2011.08.09 서준식 utl.fcc패키지와 Dependency제거를
 *               위해 getTimeStamp()메서드 추가
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009. 02. 13
 * @version 1.0
 * @see
 * 
 */
@Component("EgovFileMngUtil")
public class EgovFileMngUtil {

	public static final int BUFF_SIZE = 2048;
	

	private static final Logger LOG = Logger.getLogger(EgovFileMngUtil.class.getName());

	/**
	 * 첨부파일에 대한 목록 정보를 취득한다.
	 * 
	 * @param files
	 * @return
	 * @throws Exception
	 */
	public List<FileVO> parseFileInf(Map<String, MultipartFile> files, String KeyStr, int fileKeyParam, String atchFileId, String storePath, String jpg,int index_sq) throws Exception {
		int fileKey = fileKeyParam;

		String storePathString = "";
		String atchFileIdString = "";
		
		if ("".equals(storePath) || storePath == null) {
			storePathString = EgovProperties.getProperty("Globals.fileStorePath");
		} else {
			if(storePath.indexOf("=") >=0){
				storePathString = EgovProperties.getProperty(storePath.split("=")[0]) + storePath.split("=")[1];
			}else{
				storePathString = EgovProperties.getProperty(storePath);
			}
		}
		
		if ("".equals(atchFileId) || atchFileId == null) {
			atchFileIdString = "";
		} else {
			atchFileIdString = atchFileId;
		}
		
		
		File saveFolder = new File(EgovWebUtil.filePathBlackList(storePathString));
		
		LOG.info(">>>"+ saveFolder);
		

		if (!saveFolder.exists() || saveFolder.isFile()) {
			saveFolder.mkdirs();
		}

		Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator();
		MultipartFile file;
		String filePath = "";
		List<FileVO> result = new ArrayList<FileVO>();
		FileVO fvo;

		while (itr.hasNext()) {
			Entry<String, MultipartFile> entry = itr.next();

			file = entry.getValue();
			String orginFileName = file.getOriginalFilename();

			// --------------------------------------
			// 원 파일명이 없는 경우 처리
			// (첨부가 되지 않은 input file type)
			// --------------------------------------
			if ("".equals(orginFileName)) {
				continue;
			}
			// //------------------------------------

			int index = orginFileName.lastIndexOf(".");
			// String fileName = orginFileName.substring(0, index);
			String fileExt = orginFileName.substring(index + 1);
			String newName = KeyStr + getTimeStamp() + fileKey;
			long _size = file.getSize();
			
			// 박대리 추가 2012 10 18
			if(KeyStr.equalsIgnoreCase("gni_")) {
				newName += "." + fileExt;
			}

			if (!"".equals(orginFileName)) {
				filePath = storePathString + File.separator + newName;
				file.transferTo(new File(EgovWebUtil.filePathBlackList(filePath)));
			}
			
			fvo = new FileVO();
			
			fvo.setIndex_sq(index_sq);
			fvo.setFext_nm(fileExt);
			fvo.setFname_nm(orginFileName);
			fvo.setChname_nm(newName);
			fvo.setFsize_nm(Long.toString(_size));
			fvo.setTable_nm(atchFileIdString);
			
			/*fvo.setFileExtsn(fileExt);
			fvo.setFileStreCours(storePathString);
			fvo.setFileMg(Long.toString(_size));
			fvo.setOrignlFileNm(orginFileName);
			fvo.setStreFileNm(newName);
			fvo.setAtchFileId(atchFileIdString);
			fvo.setFileSn(String.valueOf(fileKey));
			fvo.setFile_key_cd(entry.getKey());*/

//			if(fileExt.equals("jpg") || fileExt.equals("JPG")){
//				writeFile(file, orginFileName, c:/up");
//			}
			
			result.add(fvo);

			fileKey++;
		}

		return result;
	}

	/**
	 * 첨부파일을 서버에 저장한다.
	 * 
	 * @param file
	 * @param newName
	 * @param stordFilePath
	 * @throws Exception
	 */
	public String writeUploadedFile(MultipartFile file, String newName, String stordFilePath) throws Exception {
		InputStream stream = null;
		OutputStream bos = null;
		
		stordFilePath += "/" + getTimeStamp().substring(0,6);

		try {
			stream = file.getInputStream();
			File cFile = new File(stordFilePath);

			if (!cFile.isDirectory()) {
				boolean _flag = cFile.mkdirs();
				if (!_flag) {
					throw new IOException("Directory creation Failed ");
				}
			}

			newName = newName + getTimeStamp() + ".jpg";

			bos = new FileOutputStream(stordFilePath + File.separator + newName);
			
			int bytesRead = 0;
			byte[] buffer = new byte[BUFF_SIZE];

			while ((bytesRead = stream.read(buffer, 0, BUFF_SIZE)) != -1) {
				bos.write(buffer, 0, bytesRead);
			}
		} catch (Exception e) {
			// e.printStackTrace();
			LOG.error("IGNORE:", e); // 2011.10.10 보안점검 후속조치
		} finally {
			if (bos != null) {
				try {
					bos.close();
				} catch (Exception ignore) {
					LOG.debug("IGNORED: " + ignore.getMessage());
				}
			}
			if (stream != null) {
				try {
					stream.close();
				} catch (Exception ignore) {
					LOG.debug("IGNORED: " + ignore.getMessage());
				}
			}
		}
		
		return newName; 
	}

	/**
	 * 서버의 파일을 다운로드한다.
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	public static void downFile(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String downFileName = "";
		String orgFileName = "";

		if ((String) request.getAttribute("downFile") == null) {
			downFileName = "";
		} else {
			downFileName = (String) request.getAttribute("downFile");
		}

		if ((String) request.getAttribute("orgFileName") == null) {
			orgFileName = "";
		} else {
			orgFileName = (String) request.getAttribute("orginFile");
		}

		orgFileName = orgFileName.replaceAll("\r", "").replaceAll("\n", "");

		File file = new File(EgovWebUtil.filePathBlackList(downFileName));

		if (!file.exists()) {
			throw new FileNotFoundException(downFileName);
		}

		if (!file.isFile()) {
			throw new FileNotFoundException(downFileName);
		}

		byte[] b = new byte[BUFF_SIZE]; // buffer size 2K.

		response.setContentType("application/x-msdownload");
		response.setHeader("Content-Disposition:", "attachment; filename=" + new String(orgFileName.getBytes(), "UTF-8"));
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		BufferedInputStream fin = null;
		BufferedOutputStream outs = null;

		try {
			fin = new BufferedInputStream(new FileInputStream(file));
			outs = new BufferedOutputStream(response.getOutputStream());
			int read = 0;

			while ((read = fin.read(b)) != -1) {
				outs.write(b, 0, read);
			}
		} finally {
			if (outs != null) {
				try {
					outs.flush();
					outs.close();
				} catch (Exception ignore) {
					// System.out.println("IGNORED: " + ignore.getMessage());
					LOG.debug("IGNORED: " + ignore.getMessage());
				}
			}
			if (fin != null) {
				try {
					fin.close();
				} catch (Exception ignore) {
					// System.out.println("IGNORED: " + ignore.getMessage());
					LOG.debug("IGNORED: " + ignore.getMessage());
				}
			}
		}
	}

	/**
	 * 첨부로 등록된 파일을 서버에 업로드한다.
	 * 
	 * @param file
	 * @return
	 * @throws Exception
	 */
	public static HashMap<String, String> uploadFile(MultipartFile file) throws Exception {

		HashMap<String, String> map = new HashMap<String, String>();
		// Write File 이후 Move File????
		String newName = "";
		String stordFilePath = EgovProperties.getProperty("Globals.fileStorePath");
		String orginFileName = file.getOriginalFilename();

		int index = orginFileName.lastIndexOf(".");
		// String fileName = orginFileName.substring(0, _index);
		String fileExt = orginFileName.substring(index + 1);
		long size = file.getSize();

		// newName 은 Naming Convention에 의해서 생성
		newName = getTimeStamp() + "." + fileExt;
		writeFile(file, newName, stordFilePath);
		
		// storedFilePath는 지정
		/*map.put(Globals.ORIGIN_FILE_NM, orginFileName);
		map.put(Globals.UPLOAD_FILE_NM, newName);
		map.put(Globals.FILE_EXT, fileExt);
		map.put(Globals.FILE_PATH, stordFilePath);
		map.put(Globals.FILE_SIZE, String.valueOf(size));*/

		return map;
	}

	/**
	 * 파일을 실제 물리적인 경로에 생성한다.
	 * 
	 * @param file
	 * @param newName
	 * @param stordFilePath
	 * @throws Exception
	 */
	protected static String writeFile(MultipartFile file, String newName, String stordFilePath) throws Exception {
		InputStream stream = null;
		OutputStream bos = null;
		
		String sTemp = getTimeStamp() + ".jpg";
		
		stordFilePath += "/" + sTemp.substring(0,6); 
		
		try {
			stream = file.getInputStream();
			File cFile = new File(EgovWebUtil.filePathBlackList(stordFilePath));
			
			LOG.info(cFile.toURI());

			if (!cFile.isDirectory())
				cFile.mkdirs();

			bos = new FileOutputStream(EgovWebUtil.filePathBlackList(stordFilePath + File.separator + sTemp));

			int bytesRead = 0;
			byte[] buffer = new byte[BUFF_SIZE];

			while ((bytesRead = stream.read(buffer, 0, BUFF_SIZE)) != -1) {
				bos.write(buffer, 0, bytesRead);
			}
		} catch (Exception e) {
			// e.printStackTrace();
			// throw new RuntimeException(e); // 보안점검 후속조치
			Logger.getLogger(EgovFileMngUtil.class).debug("IGNORED: " + e.getMessage());
		} finally {
			if (bos != null) {
				try {
					bos.close();
				} catch (Exception ignore) {
					Logger.getLogger(EgovFileMngUtil.class).debug("IGNORED: " + ignore.getMessage());
				}
			}
			if (stream != null) {
				try {
					stream.close();
				} catch (Exception ignore) {
					Logger.getLogger(EgovFileMngUtil.class).debug("IGNORED: " + ignore.getMessage());
				}
			}
		}
		return sTemp;
	}

	/**
	 * 서버 파일에 대하여 다운로드를 처리한다.
	 * 
	 * @param response
	 * @param streFileNm
	 *            : 파일저장 경로가 포함된 형태
	 * @param orignFileNm
	 * @throws Exception
	 */
	public void downFile(HttpServletResponse response, String streFileNm, String orignFileNm) throws Exception {
		String downFileName = streFileNm;
		String orgFileName = orignFileNm;

		File file = new File(downFileName);
		// log.debug(this.getClass().getName()+" downFile downFileName "+downFileName);
		// log.debug(this.getClass().getName()+" downFile orgFileName "+orgFileName);

		if (!file.exists()) {
			throw new FileNotFoundException(downFileName);
		}

		if (!file.isFile()) {
			throw new FileNotFoundException(downFileName);
		}

		// byte[] b = new byte[BUFF_SIZE]; //buffer size 2K.
		int fSize = (int) file.length();
		if (fSize > 0) {
			BufferedInputStream in = null;

			try {
				in = new BufferedInputStream(new FileInputStream(file));

				String mimetype = "text/html"; // "application/x-msdownload"

				response.setBufferSize(fSize);
				response.setContentType(mimetype);
				response.setHeader("Content-Disposition:", "attachment; filename=" + orgFileName);
				response.setContentLength(fSize);
				response.setHeader("Content-Transfer-Encoding", "binary");
				response.setHeader("Pragma", "no-cache");
				response.setHeader("Expires", "0");
				FileCopyUtils.copy(in, response.getOutputStream());
			} finally {
				if (in != null) {
					try {
						in.close();
					} catch (Exception ignore) {

						Logger.getLogger(EgovFileMngUtil.class).debug("IGNORED: " + ignore.getMessage());
					}
				}
			}
			response.getOutputStream().flush();
			response.getOutputStream().close();
		}

		/*
		 * String uploadPath = propertiesService.getString("fileDir");
		 * 
		 * File uFile = new File(uploadPath, requestedFile); int fSize = (int)
		 * uFile.length();
		 * 
		 * if (fSize > 0) { BufferedInputStream in = new BufferedInputStream(new
		 * FileInputStream(uFile));
		 * 
		 * String mimetype = "text/html";
		 * 
		 * response.setBufferSize(fSize); response.setContentType(mimetype);
		 * response.setHeader("Content-Disposition", "attachment; filename=\"" +
		 * requestedFile + "\""); response.setContentLength(fSize);
		 * 
		 * FileCopyUtils.copy(in, response.getOutputStream()); in.close();
		 * response.getOutputStream().flush();
		 * response.getOutputStream().close(); } else {
		 * response.setContentType("text/html"); PrintWriter printwriter =
		 * response.getWriter(); printwriter.println("<html>");
		 * printwriter.println("<br><br><br><h2>Could not get file name:<br>" +
		 * requestedFile + "</h2>"); printwriter.println(
		 * "<br><br><br><center><h3><a href='javascript: history.go(-1)'>Back</a></h3></center>"
		 * ); printwriter.println("<br><br><br>&copy; webAccess");
		 * printwriter.println("</html>"); printwriter.flush();
		 * printwriter.close(); } //
		 */

		/*
		 * response.setContentType("application/x-msdownload");
		 * response.setHeader("Content-Disposition:", "attachment; filename=" +
		 * new String(orgFileName.getBytes(),"UTF-8" ));
		 * response.setHeader("Content-Transfer-Encoding","binary");
		 * response.setHeader("Pragma","no-cache");
		 * response.setHeader("Expires","0");
		 * 
		 * BufferedInputStream fin = new BufferedInputStream(new
		 * FileInputStream(file)); BufferedOutputStream outs = new
		 * BufferedOutputStream(response.getOutputStream()); int read = 0;
		 * 
		 * while ((read = fin.read(b)) != -1) { outs.write(b,0,read); }
		 * log.debug
		 * (this.getClass().getName()+" BufferedOutputStream Write Complete!!! "
		 * );
		 * 
		 * outs.close(); fin.close(); //
		 */
	}

	/**
	 * 2011.08.09 공통 컴포넌트 utl.fcc 패키지와 Dependency제거를 위해 내부 메서드로 추가 정의함
	 * 응용어플리케이션에서 고유값을 사용하기 위해 시스템에서17자리의TIMESTAMP값을 구하는 기능
	 * 
	 * @param
	 * @return Timestamp 값
	 * @exception MyException
	 * @see
	 */
	public static String getTimeStamp() {

		String rtnStr = null;

		// 문자열로 변환하기 위한 패턴 설정(년도-월-일 시:분:초:초(자정이후 초))
		String pattern = "yyyyMMddhhmmssSSS";

		try {
			SimpleDateFormat sdfCurrent = new SimpleDateFormat(pattern, Locale.KOREA);
			Timestamp ts = new Timestamp(System.currentTimeMillis());

			rtnStr = sdfCurrent.format(ts.getTime());
		} catch (Exception e) {
			// e.printStackTrace();

			// throw new RuntimeException(e); // 보안점검 후속조치
			LOG.debug("IGNORED: " + e.getMessage());
		}

		return rtnStr;
	}
	
	public static String fileDelete(String path){
		
		File delFile = new File(path);
		
		if(delFile.exists()){
			if(delFile.delete()){
				LOG.info("삭제");
				return "true";
			}
			else{
				LOG.info("실패");
				return "fail";
			}
		}
		
		return "fail";
	}
}

