package egovframework.common;

import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.common.service.EgovFileMngUtil;
import egovframework.common.service.FileSupportService;
import egovframework.common.service.FileVO;
import egovframework.common.util.EgovProperties;
import egovframework.www.mgr.login.service.impl.MgrMainServiceImpl;
import egovframework.www.mgr.master.MgrMasterController;

/**
 * @Class FileSupportController.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 4. 10.
 * @modifyHistory
 * @See 
 */
@Controller
public class FileSupportController {
	
	private static final Logger logger = LoggerFactory.getLogger(MgrMainServiceImpl.class);
	
	@Resource(name= "fileSupportService")
	private FileSupportService fileSupportService;
	
	@Resource(name = "EgovFileMngUtil")
	private EgovFileMngUtil fileUtil;
	
	/**
	 * @author seoys
	 * @date 2015. 4. 10.
	 * @Description : ckeditor file upload
	 * @MethodName editorFileupload
	 * @param request
	 * @param response
	 * @param multiRequest
	 * @throws Exception
	 */
	@RequestMapping(value="/editor/upload.gn", method = RequestMethod.POST)
	public void editorFileupload(
			HttpServletRequest request,
			HttpServletResponse response,
			final MultipartHttpServletRequest multiRequest
	) throws Exception{
		
		PrintWriter printWriter = null;
		String uploadFn = "";
		response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
		
		try {
			// 파일 업로드
	        List<FileVO> result = null;
	        final Map<String, MultipartFile> files = multiRequest.getFileMap();
	        int idenkey = 0;
	        
	        if (!files.isEmpty()) {
	            result = fileUtil.parseFileInf(files, "gni_", 0, "EDITOR", "UPD.EDITOR.PATH", "",idenkey);
	            if(result.size() > 0){
	                FileVO vo = (FileVO) result.get(0);
	        		Iterator iter = result.iterator();
	        		while (iter.hasNext()) {
	        			vo = (FileVO) iter.next();
	        			uploadFn = vo.getChname_nm();
	        			fileSupportService.fileUpsert(vo);
	        		}
	        		
	        		String callback = request.getParameter("CKEditorFuncNum");
	        		printWriter = response.getWriter();
		            String fileUrl = EgovProperties.getProperty("SERVICE_URL") + EgovProperties.getProperty("UPD.EDITOR.REAL_PATH") + uploadFn; 	//url경로
		            printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
		                    + callback
		                    + ",'"
		                    + fileUrl
		                    + "','이미지를 업로드 하였습니다.'"
		                    + ")</script>");
		            printWriter.flush();
	           }
	        };
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".editorFileupload(): " + e.getMessage(), e);
		}
	}
}
