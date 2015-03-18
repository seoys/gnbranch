package egovframework.www.mgr.login.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.www.mgr.login.service.AdminVO;

@Mapper("mgrMapper")
public interface MgrMapper {

	public AdminVO mgrMemInfo(AdminVO adminVO);
}
