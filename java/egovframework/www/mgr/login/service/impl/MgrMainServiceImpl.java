package egovframework.www.mgr.login.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.www.mgr.login.service.AdminVO;
import egovframework.www.mgr.login.service.MgrMainService;

/**
 * @Class MgrMainServiceImpl.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2014. 12. 11.
 * @modifyHistory
 * @See
 */
@Service("mgrMainService")
public class MgrMainServiceImpl extends EgovAbstractServiceImpl implements MgrMainService {
	
	private static final Logger logger = LoggerFactory.getLogger(MgrMainServiceImpl.class);
	
	@Resource(name="mgrMapper")
	private MgrMapper mgrMapper;

	public AdminVO mgrMemInfo(AdminVO adminVO) throws Exception {
		// TODO Auto-generated method stub
		return (AdminVO)mgrMapper.mgrMemInfo(adminVO);
	}
	
	
}
