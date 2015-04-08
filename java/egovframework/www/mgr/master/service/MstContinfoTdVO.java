package egovframework.www.mgr.master.service;

/**
 * @Class MstContinfoTdVO.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 4. 8.
 * @modifyHistory
 * @See
 * 연결 컨텐츠 정보 VO
 */
public class MstContinfoTdVO {
//	연결고유번호
	public int con_sq = 0;
//	컨텐츠 유형선택
	public String akind_fl = "";
//	컨텐츠 템플릿선택
	public String tkind_fl = "";
//	관리자 그룹관리 그룹코드
	public int group_sq = 0;
//	관리자 고유번호
	public int index_sq = 0;
	
//	관리자 그룹관리 그룹명
	public String group_nm = "";
	
	
	
	public String getGroup_nm() {
		return group_nm;
	}
	public void setGroup_nm(String group_nm) {
		this.group_nm = group_nm;
	}
	public int getCon_sq() {
		return con_sq;
	}
	public void setCon_sq(int con_sq) {
		this.con_sq = con_sq;
	}
	public String getAkind_fl() {
		return akind_fl;
	}
	public void setAkind_fl(String akind_fl) {
		this.akind_fl = akind_fl;
	}
	public String getTkind_fl() {
		return tkind_fl;
	}
	public void setTkind_fl(String tkind_fl) {
		this.tkind_fl = tkind_fl;
	}
	public int getGroup_sq() {
		return group_sq;
	}
	public void setGroup_sq(int group_sq) {
		this.group_sq = group_sq;
	}
	public int getIndex_sq() {
		return index_sq;
	}
	public void setIndex_sq(int index_sq) {
		this.index_sq = index_sq;
	}
	
	
	
}
