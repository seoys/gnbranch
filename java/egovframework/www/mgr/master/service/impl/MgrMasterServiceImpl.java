package egovframework.www.mgr.master.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.www.mgr.master.service.DetAdminTdVO;
import egovframework.www.mgr.master.service.MstAdminTdVO;
import egovframework.www.mgr.master.service.MstBannerTdVO;
import egovframework.www.mgr.master.service.MstGroupTdVO;
import egovframework.www.mgr.master.service.MgrMasterService;

/**
 * @Class MgrMasterServiceImpl.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 1. 15.
 * @modifyHistory
 * @See
 */
@Service("mgrMasterService")
public class MgrMasterServiceImpl extends EgovAbstractServiceImpl implements MgrMasterService {
	
	@Resource(name="mgrMasterMapper")
	private MgrMasterMapper mgrMasterMapper;

	public List<MstGroupTdVO> mgrGroupList(MstGroupTdVO adminGroupVO)
			throws Exception {
		// TODO Auto-generated method stub
		return mgrMasterMapper.mgrGroupList(adminGroupVO);
	}

	public void mgrGroupUpdate(Map<String, Object> parameters) {
		// TODO Auto-generated method stub
		mgrMasterMapper.mgrGroupUpdate(parameters);
	}
	
	public int mgrAccountCnt(MstAdminTdVO accountVO) {
		return (Integer) mgrMasterMapper.mgrAccountCnt(accountVO);
	}
	
	public List<MstAdminTdVO> mgrAccountSel(MstAdminTdVO accountVO){
		return mgrMasterMapper.mgrAccountSel(accountVO);
	}
	
	public int mgrBranchCheckCnt(Map<String,Object> parameters) {
		return (Integer) mgrMasterMapper.mgrBranchCheckCnt(parameters);
	}

	public  Map<String,Object> mgrAccountUpsert(MstAdminTdVO accountVO) throws Exception {
		return mgrMasterMapper.mgrAccountUpsert(accountVO);
	}
	
	public Map<String,Object> mgrAccountInfoUpsert(DetAdminTdVO detAdminTdVO) throws Exception{
		return mgrMasterMapper.mgrAccountInfoUpsert(detAdminTdVO);
	}
	
	public Map<String,Object> mgrAccountInfo(MstAdminTdVO accountVO) throws Exception{
		return mgrMasterMapper.mgrAccountInfo(accountVO);
	}
	
	public void mgrAccountInfoDel(DetAdminTdVO detAdminTdVO) throws Exception{
		mgrMasterMapper.mgrAccountInfoDel(detAdminTdVO);
	}

	public void mgrAccountDel(MstAdminTdVO mstAdminTdVO) throws Exception {
		// TODO Auto-generated method stub
		mgrMasterMapper.mgrAccountDel(mstAdminTdVO);
	}
	
	public Map<String,Object> mgrBannerUpsert(MstBannerTdVO mstBannerTdVO) throws Exception{
		return mgrMasterMapper.mgrBannerUpsert(mstBannerTdVO);
	}
	
	public List<MstBannerTdVO> mgrBannerSel(MstBannerTdVO mstBannerTdVO) throws Exception{
		return mgrMasterMapper.mgrBannerSel(mstBannerTdVO);
	}
	
	public Map<String,Object> mgrBannerInfo(MstBannerTdVO mstBannerTdVO) throws Exception{
		return mgrMasterMapper.mgrBannerInfo(mstBannerTdVO);
	}
	
}
