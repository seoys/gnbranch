package egovframework.www.mgr.master.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.www.mgr.master.service.DetAdminTdVO;
import egovframework.www.mgr.master.service.DetPagetplTdVO;
import egovframework.www.mgr.master.service.MstAdminTdVO;
import egovframework.www.mgr.master.service.MstBannerTdVO;
import egovframework.www.mgr.master.service.MstContinfoTdVO;
import egovframework.www.mgr.master.service.MstGroupTdVO;
import egovframework.www.mgr.master.service.MstMenucateTdVO;

/**
 * @Class MgrMasterMapper.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 1. 15.
 * @modifyHistory
 * @See
 */
@Mapper("mgrMasterMapper")
public interface MgrMasterMapper {
	
	public List<MstGroupTdVO> mgrGroupList(MstGroupTdVO adminGroupVO);
	
	public void mgrGroupUpdate(Map<String, Object> parameters);
	
	public int mgrAccountCnt(MstAdminTdVO accountVO);
	
	public List<MstAdminTdVO> mgrAccountSel(MstAdminTdVO accountVO);
	
	public int mgrBranchCheckCnt(Map<String,Object> parameters);
	
	public Map<String,Object> mgrAccountUpsert(MstAdminTdVO accountVO);
	
	public Map<String,Object> mgrAccountInfoUpsert(DetAdminTdVO detAdminTdVO);
	
	public Map<String,Object> mgrAccountInfo(MstAdminTdVO accountVO);
	
	public void mgrAccountInfoDel(DetAdminTdVO detAdminTdVO);
	
	public void mgrAccountDel(MstAdminTdVO mstAdminTdVO);
	
	public Map<String,Object> mgrBannerUpsert(MstBannerTdVO mstBannerTdVO);
	
	public List<MstBannerTdVO> mgrBannerSel(MstBannerTdVO mstBannerTdVO);
	
	public Map<String,Object> mgrBannerInfo(MstBannerTdVO mstBannerTdVO);
	
	public List<MstMenucateTdVO> mgrMenuCategoryList(MstMenucateTdVO menuVO);
	
	public void mgrMenuCategoryUpsert(MstMenucateTdVO menuVO);
	
	public void mgrMenuCategoryDel(MstMenucateTdVO menuVO);
	
	public int mgrMenuCateMaxNum(MstMenucateTdVO menuVO);
	
	public List<MstContinfoTdVO> mgrTemplateList(MstContinfoTdVO continfoVO);
	
	public MstContinfoTdVO mgrTemplateUpsert(MstContinfoTdVO continfoVO);
	
	public Map<String,Object> mgrHtmlUpsert(DetPagetplTdVO pageVO);
	
	public DetPagetplTdVO mgrPageTplList(MstContinfoTdVO continfoVO);
}
