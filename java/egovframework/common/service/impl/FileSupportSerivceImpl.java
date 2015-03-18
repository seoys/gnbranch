package egovframework.common.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.common.service.FileSupportService;
import egovframework.common.service.FileVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("fileSupportService")
public class FileSupportSerivceImpl extends EgovAbstractServiceImpl implements FileSupportService {

	@Resource(name="fileSupportMapper")
	private FileSupportMapper fileSupportMapper;

	public void fileUpsert(FileVO parameters) throws Exception {
		// TODO Auto-generated method stub
		fileSupportMapper.fileUpsert(parameters);
	}
	
	public FileVO fileInfo(FileVO fileVO) throws Exception{
		return fileSupportMapper.fileInfo(fileVO);
	}

	public void fileDel(FileVO fileVO) throws Exception{
		fileSupportMapper.fileDel(fileVO);
	}
}
