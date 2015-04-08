package egovframework.www.mgr.master;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egovframework.common.CommonSearchVO;
import egovframework.common.MsgVO;
import egovframework.common.service.EgovFileMngUtil;
import egovframework.common.service.FileSupportService;
import egovframework.common.service.FileVO;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import egovframework.www.mgr.login.MgrSessionController;
import egovframework.www.mgr.login.service.impl.MgrMainServiceImpl;
import egovframework.www.mgr.master.service.DetAdminTdVO;
import egovframework.www.mgr.master.service.MgrMasterService;
import egovframework.www.mgr.master.service.MstAdminTdVO;
import egovframework.www.mgr.master.service.MstBannerTdVO;
import egovframework.www.mgr.master.service.MstContinfoTdVO;
import egovframework.www.mgr.master.service.MstGroupTdVO;
import egovframework.www.mgr.master.service.MstMenucateTdVO;

/**
 * @Class MgrMasterController.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 1. 15.
 * @modifyHistory
 * @See
 */
@Controller
public class MgrMasterController extends MgrSessionController{

	private static final Logger logger = LoggerFactory.getLogger(MgrMainServiceImpl.class);
	
	@Resource(name="mgrMasterService")
	private MgrMasterService mgrMasterService;
	
	@Resource(name = "multipartResolver")
	CommonsMultipartResolver multipartResolver;
	
	@Resource(name = "EgovFileMngUtil")
	private EgovFileMngUtil fileUtil;
	
	@Resource(name= "fileSupportService")
	private FileSupportService fileSupportService;
	
	MsgVO msgVO = null;
	
	/**
	 * @author seoys
	 * @date 2015. 1. 14.
	 * @Description : 관리자 그룹 리스트
	 * @MethodName mgrMasterMain
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/mgr/grouplist.gn")
	public String mgrGroupList(
			ModelMap model,
			HttpServletRequest request,
			MstGroupTdVO adminGroupVO
		) throws Exception{

//		관리자 로그인확인
//		if(!super.isMgrLogin(model)){return "redirect:/mgr/login.gn";};
		
		try {
			
			List<MstGroupTdVO> resultList = mgrMasterService.mgrGroupList(adminGroupVO);
			model.addAttribute("resultList", resultList);
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrMain(): " + e.getMessage(), e);
		}
		
		return "mgr/master/adminGroup";
	};
	
	/**
	 * @author seoys
	 * @date 2015. 1. 16.
	 * @Description : 관리자 그룹 업데이트
	 * @MethodName mgrGroupProc
	 * @param params
	 * @param model
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/mgr/groupProc.gn")
	@ResponseBody
	public String mgrGroupProc(
			@RequestParam Map<String,Object> params,
			ModelMap model,
			HttpServletRequest request
		) throws Exception{
		

		try {
			
			mgrMasterService.mgrGroupUpdate(params);
			
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrGroupProc(): " + e.getMessage(), e);
		}
		
		return "";
	}
	
	
	/**
	 * @author seoys
	 * @date 2015. 1. 16.
	 * @Description : 지부 관리자 계정관리 list
	 * @MethodName mgrAccountList
	 * @param model
	 * @param request
	 * @param response
	 * @param accountVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/mgr/accountList.gn")
	public String mgrAccountList(
			@ModelAttribute("searchVO") CommonSearchVO searchVO,
			ModelMap model,
			HttpServletRequest request,
			HttpServletResponse response,
			MstGroupTdVO mstGroupTdVO,
			MstAdminTdVO mstAdminTdVO
			) throws Exception{

		
		try {
			
//			관리자 그룹리스트
			List<MstGroupTdVO> resultGList = mgrMasterService.mgrGroupList(mstGroupTdVO);
			model.addAttribute("resultGList", resultGList);
			
			
//			정렬을 위한 고유필드 지정
			mstAdminTdVO.setObfield("B.INDEX_SQ");
			int totCnt = mgrMasterService.mgrAccountCnt(mstAdminTdVO);
			List<MstAdminTdVO> resultList = mgrMasterService.mgrAccountSel(mstAdminTdVO);
			
			
			/** pageing setting */
			PaginationInfo paginationInfo = new PaginationInfo();
			paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
			paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
			paginationInfo.setPageSize(searchVO.getPageSize());
			paginationInfo.setTotalRecordCount(totCnt);

			searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
			searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
			searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
			
			model.addAttribute("paginationInfo", paginationInfo);
			model.addAttribute("selectList", resultList);
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrAccountList(): " + e.getMessage(), e);
		}
		
		return "/mgr/master/accountList";
	}
	
	/**
	 * @author seoys
	 * @date 2015. 1. 16.
	 * @Description : 지부 관리자 계정관리 write
	 * @MethodName mgrAccountWrite
	 * @param model
	 * @param request
	 * @param response
	 * @param accountVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/mgr/accountWrite.gn")
	public String mgrAccountWrite(
			ModelMap model,
			HttpServletRequest request,
			MstGroupTdVO adminGroupVO,
			@ModelAttribute("accountVO") MstAdminTdVO accountVO			
			) throws Exception{

		
		try {
			
//			관리자 그룹리스트
			List<MstGroupTdVO> resultList = mgrMasterService.mgrGroupList(adminGroupVO);
			model.addAttribute("resultList", resultList);
			
//          관리자 상세정보
			if(accountVO.getIndex_sq() > 0){
				Map<String,Object> resultMap = mgrMasterService.mgrAccountInfo(accountVO);
	            model.addAttribute("resultMap", resultMap);
			}
            
			
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrAccountWrite(): " + e.getMessage(), e);
		}
		return "/mgr/master/accountWrite";
	}
	
	/**
	 * @author seoys
	 * @date 2015. 1. 21.
	 * @Description : 지부 관리자 계정 등록 및 수정 
	 * @MethodName mgrAccountProc
	 * @param model
	 * @param request
	 * @param accountVO
	 * @param detAdminTdVO
	 * @param multiRequest
	 * @throws Exception
	 */
	@RequestMapping(value="/mgr/accountProc.gn",method=RequestMethod.POST)
	public String mgrAccountProc(
			ModelMap model,
			final HttpServletRequest request,
			MstAdminTdVO accountVO,
			DetAdminTdVO detAdminTdVO,
			final MultipartHttpServletRequest multiRequest
		) throws Exception{

		
		try {
			msgVO = new MsgVO();
			
//          지부관리자 Upsert
            Map<String,Object> resultList = mgrMasterService.mgrAccountUpsert(accountVO);
            int idenkey = 0;
            
            for( String key : resultList.keySet() ){
                //logger.info( String.format("키 : %s, 값 : %s", key, resultList.get(key)) );
                if(key.equals("INDEX_SQ")){
                    idenkey =  Integer.parseInt(resultList.get("INDEX_SQ").toString());
                };
            }
            
//          지부관리자 상세정보 Upsert
            detAdminTdVO.setIndex_sq(idenkey);
            Map<String,Object> aiResultList = mgrMasterService.mgrAccountInfoUpsert(detAdminTdVO);

            // 파일 업로드
            List<FileVO> result = null;
            final Map<String, MultipartFile> files = multiRequest.getFileMap();
            
            if (!files.isEmpty()) {
                result = fileUtil.parseFileInf(files, "gni_", 0, "FILEUPLOAD", "IMG.BOARD.PATH", "",idenkey);
                if(result.size() > 0){
	                FileVO vo = (FileVO) result.get(0);
	        		Iterator iter = result.iterator();
	        		while (iter.hasNext()) {
	        			vo = (FileVO) iter.next();
	        			fileSupportService.fileUpsert(vo);
	        		}
               }
            };
            
            if(!aiResultList.isEmpty()){
            	msgVO.setMsg("정상적으로 등록[수정] 되었습니다.");
            	msgVO.setUrl("/mgr/accountWrite.gn?index_sq=" + detAdminTdVO.getIndex_sq());
            };
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrAccountProc(): " + e.getMessage(), e);
		}
		
		model.addAttribute("msgVO",msgVO);
		return "alert";
	}
	
	/**
	 * @author seoys
	 * @date 2015. 1. 28.
	 * @Description : 지부 관리자 계정 삭제
	 * @MethodName mgrAccountDel
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/mgr/accountDel.gn")
	public String mgrAccountDel(
		ModelMap model,
		MstAdminTdVO mstAdminTdVO,
		DetAdminTdVO detAdminTdVO,
		FileVO fileVO
		) throws Exception{
		
		try {
			fileSupportService.fileDel(fileVO);
			mgrMasterService.mgrAccountInfoDel(detAdminTdVO);
			mgrMasterService.mgrAccountDel(mstAdminTdVO);
			
			msgVO.setMsg("정상적으로 삭제 되었습니다.");
        	msgVO.setUrl("/mgr/accountList.gn");
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrAccountDel(): " + e.getMessage(), e);
		}
		
		model.addAttribute("msgVO",msgVO);
		return "alert";
	}
	
	
	/**
	 * @author seoys
	 * @date 2015. 1. 19.
	 * @Description : 지부관련 항목 체크
	 * @MethodName mgrCheckProc
	 * @param params
	 * @param model
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/mgr/mgrCheck.gn")
	@ResponseBody
	public String mgrCheckProc(
			@RequestParam Map<String,Object> params,
			ModelMap model,
			HttpServletResponse response
			) throws Exception{
		
		try {
			int resultCnt = mgrMasterService.mgrBranchCheckCnt(params);
		    return Integer.toString(resultCnt);
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrCheckProc(): " + e.getMessage(), e);
		}
		
		return "-1";
	}
	
	@RequestMapping("/mgr/banner{kind}List.gn")
	public String mgrBranchBannerList(
		ModelMap model,
		MstBannerTdVO mstBannerTdVO,
		@PathVariable("kind") String vKind
		) throws Exception{
		try {
			
			mstBannerTdVO.setObfield("ORDERBY_CNT");
			mstBannerTdVO.setKind_fl(vKind);
			List<MstBannerTdVO>	 resultList = mgrMasterService.mgrBannerSel(mstBannerTdVO);
			model.addAttribute("resultList", resultList);
			
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrBranchBannerList(): " + e.getMessage(), e);
		}
		return "mgr/branchMain/bannerList";
	}
	
	/**
	 * @author seoys
	 * @date 2015. 2. 10.
	 * @Description : 배너 수정페이지
	 * @MethodName mgrBranchBannerWrite
	 * @param model
	 * @param mstBannerTdVO
	 * @param mstGroupTdVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/mgr/banner{kind}Write.gn")
	public String mgrBranchBannerWrite(
		ModelMap model,
		@ModelAttribute("mstBannerTdVO") MstBannerTdVO mstBannerTdVO,
		MstGroupTdVO mstGroupTdVO,
		@PathVariable("kind") String vMenuKind
		) throws Exception{
		
		try {
//			그룹 리스트
			List<MstGroupTdVO> resultList = mgrMasterService.mgrGroupList(mstGroupTdVO);
			model.addAttribute("resultList", resultList);
			
//			수정페이지 일경우..
			if(mstBannerTdVO.getBanner_sq() > 0){
				Map<String,Object> resultMap = mgrMasterService.mgrBannerInfo(mstBannerTdVO);
				model.addAttribute("resultMap", resultMap);
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrBranchBannerWrite(): " + e.getMessage(), e);
		}
		
		return "mgr/branchMain/bannerWrite";
	}
	
	/**
	 * @author seoys
	 * @date 2015. 1. 30.
	 * @Description : 지부배너등록
	 * @MethodName mgrBranchBannerProc
	 * @param mstBannerTdVO
	 * @param request
	 * @param multiRequest
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/mgr/bannerProc.gn",method=RequestMethod.POST)
	public String mgrBranchBannerProc(
			ModelMap model,
			MstBannerTdVO mstBannerTdVO,
			HttpServletRequest request,
			final MultipartHttpServletRequest multiRequest
		) throws Exception{
		
		try {
			msgVO = new MsgVO();
			Map<String,Object> resultList = mgrMasterService.mgrBannerUpsert(mstBannerTdVO);
			
            int idenkey = 0;
            
            for( String key : resultList.keySet() ){
                //logger.info( String.format("키 : %s, 값 : %s", key, resultList.get(key)) );
                if(key.equals("BANNER_SQ")){
                    idenkey =  Integer.parseInt(resultList.get("BANNER_SQ").toString());
                };
            };
            
         // 파일 업로드
            List<FileVO> result = null;
            final Map<String, MultipartFile> files = multiRequest.getFileMap();
            
            if (!files.isEmpty()) {
                result = fileUtil.parseFileInf(files, "gni_", 0, "BANNER", "IMG.BOARD.PATH", "",idenkey);
                if(result.size() > 0){
	                FileVO vo = (FileVO) result.get(0);
	        		Iterator iter = result.iterator();
	        		while (iter.hasNext()) {
	        			vo = (FileVO) iter.next();
	        			fileSupportService.fileUpsert(vo);
	        		}
               }
            };
            
            msgVO.setMsg("정상적으로 등록[수정] 되었습니다.");
        	msgVO.setUrl("/mgr/banner" + mstBannerTdVO.getKind_fl() + "Write.gn?banner_sq=" + idenkey);
        	
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrBranchBannerProc(): " + e.getMessage(), e);
			msgVO.setMsg(e.getMessage());
        	msgVO.setUrl("/mgr/banner" + mstBannerTdVO.getKind_fl() + "List.gn");
		}
		
		model.addAttribute("msgVO",msgVO);
		return "alert";
	}
	
	/**
	 * @author seoys
	 * @date 2015. 3. 4.
	 * @Description : 메뉴 생성
	 * @MethodName mgrMenuMain
	 * @param model
	 * @param response
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/mgr/menuMain.gn")
	public String mgrMenuMain(
			ModelMap model,
			HttpServletResponse response,
			HttpServletRequest request
			) throws Exception{
		try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "mgr/menu/branchMenu";
	}
	
	/**
	 * @author seoys
	 * @date 2015. 4. 3.
	 * @Description : 메뉴카테고리 리스트
	 * @MethodName mgrMenuList
	 * @param menuVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/mgr/menuList.gn", produces={"application/json"})
	public @ResponseBody Object mgrMenuList(
			MstMenucateTdVO menuVO
	) throws Exception{
		List<MstMenucateTdVO> resultList = null;
		
		try {
			menuVO.setUser_id("mgrgni");
			resultList = mgrMasterService.mgrMenuCategoryList(menuVO);
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrMenuList(): " + e.getMessage(), e);
		}
		return resultList;
	}
	
	/**
	 * @author seoys
	 * @date 2015. 4. 3.
	 * @Description : 메뉴카테고리 등록/수정
	 * @MethodName mgrMenuIns
	 * @param model
	 * @param response
	 * @param request
	 * @throws Exception
	 */
	@RequestMapping(value="/mgr/menuCategoryProc.gn")
	public void mgrMenuCategoryUpsert(
		ModelMap model,
		HttpServletResponse response,
		HttpServletRequest request,
		MstMenucateTdVO menuVO
	) throws Exception{
		try {
			menuVO.setUser_id("mgrgni");
			menuVO.setIndex_sq(57);
			
//			선택한 카테고리가 있다면 하위카테고리로 등록!
			if(menuVO.getSel_cate() > 0){
				String stringCalNum = Integer.toString(menuVO.getSel_cate());
				int intCalNum = menuVO.getSel_cate();
				
//              1deps를 선택했다면..
                if(stringCalNum.substring(3, 9).equals("100100")){
                	intCalNum = intCalNum + 1000000;
                	menuVO.setMax_cate(intCalNum);
                    menuVO.setMin_cate(menuVO.getSel_cate());
                    menuVO.setDepth(1);
                     
                    int resultNum = mgrMasterService.mgrMenuCateMaxNum(menuVO);
                    resultNum += 1000;
                    String changeCode = Integer.toString(resultNum);
                    int intChangeCode = Integer.parseInt(changeCode.substring(0,6) + "100");
                    menuVO.setCate_cd(intChangeCode);
//                    logger.error(">" + intChangeCode);
//              2deps를 선택했다면..
                }else if(stringCalNum.substring(6, 9).equals("100")){
                	intCalNum = intCalNum + 100;
                    menuVO.setMax_cate(intCalNum);
                    menuVO.setMin_cate(menuVO.getSel_cate());
                    
                    int resultNum = mgrMasterService.mgrMenuCateMaxNum(menuVO);
                    resultNum += 1;
                    menuVO.setCate_cd(resultNum);
//                    logger.error(">" + resultNum);
                }
				
			}
			 
			mgrMasterService.mgrMenuCategoryUpsert(menuVO);
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrMenuCategoryUpsert(): " + e.getMessage(), e);
		}
	}
	
	/**
	 * @author seoys
	 * @date 2015. 4. 6.
	 * @Description : 메뉴카테고리 삭제
	 * @MethodName mgrMenuCategoryDel
	 * @param response
	 * @param request
	 * @param menuVO
	 * @throws Exception
	 */
	@RequestMapping(value="/mgr/menuCategoryDel.gn")
	public String mgrMenuCategoryDel(
			ModelMap model,
			HttpServletResponse response,
			HttpServletRequest request,
			MstMenucateTdVO menuVO
	) throws Exception{
		try {
			msgVO = new MsgVO();
			
			if(menuVO.getCate_cd() == 0){
				msgVO.setMsg("필수정보가 없습니다.");
	        	msgVO.setUrl("/mgr/menuMain.gn");
			}else{
				String stringCalNum = Integer.toString(menuVO.getCate_cd());
				int intCalNum = menuVO.getCate_cd();
				
				if(stringCalNum.substring(3, 9).equals("100100")){
					intCalNum = intCalNum + 1000000;
					menuVO.setDepth(1);
					menuVO.setMax_cate(intCalNum);
                    menuVO.setMin_cate(menuVO.getCate_cd());
                    
				}else if(stringCalNum.substring(6, 9).equals("100")){
					menuVO.setDepth(2);
					intCalNum = intCalNum + 100;
                    menuVO.setMax_cate(intCalNum);
                    menuVO.setMin_cate(menuVO.getCate_cd());
				}else{
					menuVO.setDepth(3);
				}
				
				mgrMasterService.mgrMenuCategoryDel(menuVO);
				msgVO.setUrl("/mgr/menuMain.gn");
			}			
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrMenuCategoryDel(): " + e.getMessage(), e);
		}
		
		model.addAttribute("msgVO",msgVO);
		return "alert";	
	};
	
	
	@RequestMapping(value="/mgr/menuTemplateList.gn")
	public String mgrTemplateList(
		ModelMap model,
		HttpServletResponse response,
		HttpServletRequest request,
		MstGroupTdVO mstGroupTdVO,
		MstContinfoTdVO mstConinfoTdVO
	) throws Exception{
		try {
//			그룹 리스트
			List<MstGroupTdVO> resultList = mgrMasterService.mgrGroupList(mstGroupTdVO);
			model.addAttribute("resultList", resultList);
			
			List<MstContinfoTdVO> tplResult = mgrMasterService.mgrTemplateList(mstConinfoTdVO);
			model.addAttribute("tplResult", tplResult);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrMenuCategoryDel(): " + e.getMessage(), e);
		}
		
		return "mgr/page/htmlAdminList";
	}
	
	@RequestMapping(value="/mgr/menuTemplateProc.gn", produces={"application/json"})
	public @ResponseBody Object mgrTempateProc(
			ModelMap model,
			HttpServletResponse response,
			HttpServletRequest request,
			MstContinfoTdVO mstConinfoTdVO
	) throws Exception{
		List<MstContinfoTdVO> resultList = new ArrayList<MstContinfoTdVO>();
		
		try {
			MstContinfoTdVO resultVO = mgrMasterService.mgrTemplateUpsert(mstConinfoTdVO);
			
			if(resultVO.getCon_sq() > 0){
				resultList = mgrMasterService.mgrTemplateList(mstConinfoTdVO);
			}
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMasterController.class.getName() + ".mgrTempateProc(): " + e.getMessage(), e);
		}
		
		return resultList;
	}
	
}
