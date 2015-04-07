package egovframework.www.mgr.master.service;

/**
 * @Class MstMenucateTdVO.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 4. 3.
 * @modifyHistory
 * 메뉴카테고리 VO
 * @See  
 */
public class MstMenucateTdVO {
//	카테고리 고유번호
	public int cate_sq = 0;
//	카테고리 코드
	public int cate_cd = 0;
//	카테고리명
	public String menu_nm = "";
//	사용여부
	public String use_fl = "";
//	입력일
	public String reg_dt = "";
//	등록자 아이디
	public String user_id = "";
//	관리자 고유번호
	public int index_sq = 0;
//	선택한 카테고리 코드
	public int sel_cate = 0;
//	카테고리 max값 검색시 필요
	public int max_cate = 0;
//	카테고리 max값 검색시 필요	
	public int min_cate = 0;
		
	
	public int getMax_cate() {
		return max_cate;
	}
	public void setMax_cate(int max_cate) {
		this.max_cate = max_cate;
	}
	public int getMin_cate() {
		return min_cate;
	}
	public void setMin_cate(int min_cate) {
		this.min_cate = min_cate;
	}
	public int getSel_cate() {
		return sel_cate;
	}
	public void setSel_cate(int sel_cate) {
		this.sel_cate = sel_cate;
	}
	public int getCate_sq() {
		return cate_sq;
	}
	public void setCate_sq(int cate_sq) {
		this.cate_sq = cate_sq;
	}
	public int getCate_cd() {
		return cate_cd;
	}
	public void setCate_cd(int cate_cd) {
		this.cate_cd = cate_cd;
	}
	public String getMenu_nm() {
		return menu_nm;
	}
	public void setMenu_nm(String menu_nm) {
		this.menu_nm = menu_nm;
	}
	public String getUse_fl() {
		return use_fl;
	}
	public void setUse_fl(String use_fl) {
		this.use_fl = use_fl;
	}
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getIndex_sq() {
		return index_sq;
	}
	public void setIndex_sq(int index_sq) {
		this.index_sq = index_sq;
	}
}
