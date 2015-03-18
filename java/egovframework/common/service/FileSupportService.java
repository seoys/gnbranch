package egovframework.common.service;

public interface FileSupportService {
	void fileUpsert(FileVO vo) throws Exception;
	
	FileVO fileInfo(FileVO fileVO) throws Exception;
	
	void fileDel(FileVO fileVO) throws Exception;
}
