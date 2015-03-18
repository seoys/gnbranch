package egovframework.common.service.impl;

import egovframework.common.service.FileVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("fileSupportMapper")
public interface FileSupportMapper {
	public void fileUpsert(FileVO parameters);

	public FileVO fileInfo(FileVO fileVO);
	
	public void fileDel(FileVO fileVO);
}
