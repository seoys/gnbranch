package egovframework.www.mgr.master.service;

import java.util.List;
import java.util.Map;

/**
 * @Class MgrMasterService.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 1. 15.
 * @modifyHistory
 * @See
 */
public interface MgrMasterService {
	
	List<MstGroupTdVO> mgrGroupList(MstGroupTdVO adminGroupVO) throws Exception;

	void mgrGroupUpdate(Map<String, Object> parameters) throws Exception;
	
	int mgrAccountCnt(MstAdminTdVO accountVO) throws Exception;
	
	List<MstAdminTdVO>  mgrAccountSel(MstAdminTdVO accountVO) throws Exception;
	
	int mgrBranchCheckCnt(Map<String, Object> parameters) throws Exception;
	
	Map<String,Object> mgrAccountUpsert(MstAdminTdVO accountVO) throws Exception;
	
	Map<String,Object> mgrAccountInfoUpsert(DetAdminTdVO detAdminTdVO) throws Exception;
	
	Map<String,Object> mgrAccountInfo(MstAdminTdVO accountVO) throws Exception;
	
	void mgrAccountInfoDel(DetAdminTdVO detAdminTdVO) throws Exception;
	
	void mgrAccountDel(MstAdminTdVO mstAdminTdVO) throws Exception;
	
	Map<String,Object> mgrBannerUpsert(MstBannerTdVO mstBannerTdVO) throws Exception;
	
	List<MstBannerTdVO> mgrBannerSel(MstBannerTdVO mstBannerTdVO) throws Exception;
	
	Map<String,Object> mgrBannerInfo(MstBannerTdVO mstBannerTdVO) throws Exception;
	
	List<MstMenucateTdVO> mgrMenuCategoryList(MstMenucateTdVO menuVO) throws Exception;
	
	void mgrMenuCategoryUpsert(MstMenucateTdVO menuVO) throws Exception;
	
	void mgrMenuCategoryDel(MstMenucateTdVO menuVO) throws Exception;
	
	int mgrMenuCateMaxNum(MstMenucateTdVO menuVO) throws Exception;
	
	List<MstContinfoTdVO> mgrTemplateList(MstContinfoTdVO continfoVO) throws Exception;
	
	MstContinfoTdVO mgrTemplateUpsert(MstContinfoTdVO continfoVO) throws Exception;
	
	Map<String,Object> mgrHtmlUpsert(DetPagetplTdVO pageVO) throws Exception;
	
	DetPagetplTdVO mgrPageTplList(MstContinfoTdVO continfoVO) throws Exception;
	
}
