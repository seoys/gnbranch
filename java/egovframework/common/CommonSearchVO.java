package egovframework.common;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public class CommonSearchVO {
	private static final long serialVersionUID = 1L;
	
	/** 현재페이지 */
	private int pageIndex = 1;
	/** 페이지갯수 row수 */
	private int pageUnit = 10;
	/** 페이지사이즈 -가로 페이지 넘버 수 */
	private int pageSize = 10;
	/** firstIndex */
	private int firstIndex = 1;
	/** lastIndex */
	private int lastIndex = 1;
	/** recordCountPerPage */
	private int recordCountPerPage = 10;
	/** 총갯수 */
	private int totalCnt = 0;
	
	/** 업로드 파일 */
	private MultipartFile imgs;
	
	/** 검색조건 */
	private String searchCondition = "";
	/** 검색조건 */
	private String searchKey = "";
	/** 검색Keyword */
	private String searchKeyword = "";
	/** 검색사용여부 */
	private String searchUseYn = "";
	/** MODE */
	private String mode = "";
	/** 노출여부 */
	private String open_yn = "";
	/** 시퀀스 */
	private String seq = "";
	private int nSeq;
	/** id */
	private String id = "";
	private String code = "";
	private int nid;
	/** 날짜 검색 타입 */
	private String dt_type = "";
	/** 순서 */
	private String ord = "";
	/** 정렬 */
	private String sort = "";
	/** state */
	private String state = "";
	/** 파일 아이디 */
	private String atchFileId = "";
	/** 게시판아이디 */
	private String bbsID = "";
	/** 시작날짜 */
	private String sdt = "";
	/** 종료날짜 */
	private String edt = "";
	/** 시작날짜 */
	private String sdt1 = "";
	/** 종료날짜 */
	private String edt1 = "";
	/** 시작날짜 */
	private String sdt2 = "";
	/** 종료날짜 */
	private String edt2 = "";
	/** 구분 */
	private String gb = "";
	/** 구분 2개일경우 */
	private String gb1 = "";
	/** 상세구분 */
	private String gb2 = "";
	/** 추가필드1 */
	private String val1 = "";
	/** 추가필드2 */
	private String val2 = "";
	/** 추가필드3 */
	private String val3 = "";
	/** val4 */
	private String val4 = "";
	/** val5 */
	private String val5 = "";
	/** val6 */
	private String val6 = "";
	/** val7 */
	private String val7 = "";
	/** val8 */
	private String val8 = "";
	/** val9 */
	private String val9 = "";
	/** val10 */
	private String val10 = "";
	/** 시퀀스 목록 */
	private String[] seqList = null;
	/** 리스트 */
	private String[] dList = null;
	/** 리스트1 */
	private String[] dList1 = null;
	/** 리스트2 */
	private String[] dList2 = null;
	/** 리스트3 */
	private String[] dList3 = null;
	/** 리스트4 */
	private String[] dList4 = null;
	/** 리스트5 */
	private String[] dList5 = null;
	/** map */
	private Map<Object, Object> params;
	// 포스트페이징
	private int postPaging = 0;
//	고유번호지정
	private int idx = 0;
	
//	정렬을 위한 고유필드명
	private String obfield = "";
	
		
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getObfield() {
		return obfield;
	}
	public void setObfield(String obfield) {
		this.obfield = obfield;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageUnit() {
		return pageUnit;
	}
	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getFirstIndex() {
		return firstIndex;
	}
	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}
	public int getLastIndex() {
		return lastIndex;
	}
	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}
	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public MultipartFile getImgs() {
		return imgs;
	}
	public void setImgs(MultipartFile imgs) {
		this.imgs = imgs;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getSearchUseYn() {
		return searchUseYn;
	}
	public void setSearchUseYn(String searchUseYn) {
		this.searchUseYn = searchUseYn;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getOpen_yn() {
		return open_yn;
	}
	public void setOpen_yn(String open_yn) {
		this.open_yn = open_yn;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public int getnSeq() {
		return nSeq;
	}
	public void setnSeq(int nSeq) {
		this.nSeq = nSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getDt_type() {
		return dt_type;
	}
	public void setDt_type(String dt_type) {
		this.dt_type = dt_type;
	}
	public String getOrd() {
		return ord;
	}
	public void setOrd(String ord) {
		this.ord = ord;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAtchFileId() {
		return atchFileId;
	}
	public void setAtchFileId(String atchFileId) {
		this.atchFileId = atchFileId;
	}
	public String getBbsID() {
		return bbsID;
	}
	public void setBbsID(String bbsID) {
		this.bbsID = bbsID;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getEdt() {
		return edt;
	}
	public void setEdt(String edt) {
		this.edt = edt;
	}
	public String getSdt1() {
		return sdt1;
	}
	public void setSdt1(String sdt1) {
		this.sdt1 = sdt1;
	}
	public String getEdt1() {
		return edt1;
	}
	public void setEdt1(String edt1) {
		this.edt1 = edt1;
	}
	public String getSdt2() {
		return sdt2;
	}
	public void setSdt2(String sdt2) {
		this.sdt2 = sdt2;
	}
	public String getEdt2() {
		return edt2;
	}
	public void setEdt2(String edt2) {
		this.edt2 = edt2;
	}
	public String getGb() {
		return gb;
	}
	public void setGb(String gb) {
		this.gb = gb;
	}
	public String getGb1() {
		return gb1;
	}
	public void setGb1(String gb1) {
		this.gb1 = gb1;
	}
	public String getGb2() {
		return gb2;
	}
	public void setGb2(String gb2) {
		this.gb2 = gb2;
	}
	public String getVal1() {
		return val1;
	}
	public void setVal1(String val1) {
		this.val1 = val1;
	}
	public String getVal2() {
		return val2;
	}
	public void setVal2(String val2) {
		this.val2 = val2;
	}
	public String getVal3() {
		return val3;
	}
	public void setVal3(String val3) {
		this.val3 = val3;
	}
	public String getVal4() {
		return val4;
	}
	public void setVal4(String val4) {
		this.val4 = val4;
	}
	public String getVal5() {
		return val5;
	}
	public void setVal5(String val5) {
		this.val5 = val5;
	}
	public String getVal6() {
		return val6;
	}
	public void setVal6(String val6) {
		this.val6 = val6;
	}
	public String getVal7() {
		return val7;
	}
	public void setVal7(String val7) {
		this.val7 = val7;
	}
	public String getVal8() {
		return val8;
	}
	public void setVal8(String val8) {
		this.val8 = val8;
	}
	public String getVal9() {
		return val9;
	}
	public void setVal9(String val9) {
		this.val9 = val9;
	}
	public String getVal10() {
		return val10;
	}
	public void setVal10(String val10) {
		this.val10 = val10;
	}
	public String[] getSeqList() {
		return seqList;
	}
	public void setSeqList(String[] seqList) {
		this.seqList = seqList;
	}
	public String[] getdList() {
		return dList;
	}
	public void setdList(String[] dList) {
		this.dList = dList;
	}
	public String[] getdList1() {
		return dList1;
	}
	public void setdList1(String[] dList1) {
		this.dList1 = dList1;
	}
	public String[] getdList2() {
		return dList2;
	}
	public void setdList2(String[] dList2) {
		this.dList2 = dList2;
	}
	public String[] getdList3() {
		return dList3;
	}
	public void setdList3(String[] dList3) {
		this.dList3 = dList3;
	}
	public String[] getdList4() {
		return dList4;
	}
	public void setdList4(String[] dList4) {
		this.dList4 = dList4;
	}
	public String[] getdList5() {
		return dList5;
	}
	public void setdList5(String[] dList5) {
		this.dList5 = dList5;
	}
	public Map<Object, Object> getParams() {
		return params;
	}
	public void setParams(Map<Object, Object> params) {
		this.params = params;
	}
	public int getPostPaging() {
		return postPaging;
	}
	public void setPostPaging(int postPaging) {
		this.postPaging = postPaging;
	}
}
