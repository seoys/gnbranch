package egovframework.common.service;


import java.io.Serializable;

/**
 * @Class Name : FileVO.java
 * @Description : 파일정보 처리를 위한 VO 클래스
 * @Modification Information
 *
 *    수정일       수정자         수정내용
 *    -------        -------     -------------------
 *    2009. 3. 25.     이삼섭
 *
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009. 3. 25.
 * @version
 * @see
 *
 */
/**
 * @Description:
 * @Author: yshid@eluocnc.com
 * @Since: 2012. 6. 18.
 * @Version: 1.0
 */
@SuppressWarnings("serial")
public class FileVO implements Serializable {
	
//	파일고유번호
	private String fad_sq = "";
//	파일고유명
	private String fname_nm = "";
//	파일사이즈
	private String fsize_nm = "";
//	파일확장자
	private String fext_nm = "";
//	변경된 파일명
	private String chname_nm = "";
//	관리자정보 고유번호
	private int index_sq = 0;
//	테이블 구분
	private String table_nm = "";
	
	public String getFad_sq() {
		return fad_sq;
	}
	public void setFad_sq(String fad_sq) {
		this.fad_sq = fad_sq;
	}
	public String getFname_nm() {
		return fname_nm;
	}
	public void setFname_nm(String fname_nm) {
		this.fname_nm = fname_nm;
	}
	public String getFsize_nm() {
		return fsize_nm;
	}
	public void setFsize_nm(String fsize_nm) {
		this.fsize_nm = fsize_nm;
	}
	public String getFext_nm() {
		return fext_nm;
	}
	public void setFext_nm(String fext_nm) {
		this.fext_nm = fext_nm;
	}
	public String getChname_nm() {
		return chname_nm;
	}
	public void setChname_nm(String chname_nm) {
		this.chname_nm = chname_nm;
	}
	public int getIndex_sq() {
		return index_sq;
	}
	public void setIndex_sq(int index_sq) {
		this.index_sq = index_sq;
	}
	public String getTable_nm() {
		return table_nm;
	}
	public void setTable_nm(String table_nm) {
		this.table_nm = table_nm;
	}
}
