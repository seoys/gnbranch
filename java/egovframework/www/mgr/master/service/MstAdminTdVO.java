package egovframework.www.mgr.master.service;

import egovframework.common.CommonSearchVO;

/**
 * @Class MstAdminTdVO.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 1. 30.
 * @modifyHistory
 * @See
 */
public class MstAdminTdVO extends CommonSearchVO {
	
	private static final long serialVersionUID = 1L;
	
//	관리자 고유번호
	private int index_sq = 0;
//	관리자명
	private String name_nm = "";
//	관리자 구분
	private String admin_gb = "";
//	사용여부
	private String use_fl = "";
//	입력일
	private String reg_dt = "";
//	사용자아이디
	private String user_id = "";
//	사용자패스워드
	private String user_pwd = "";
//	그룹고유번호
	private int group_sq = 0;
//	지부명
	private String branch_nm = "";
	
		
	
	public int getIndex_sq() {
		return index_sq;
	}
	public void setIndex_sq(int index_sq) {
		this.index_sq = index_sq;
	}
	public String getName_nm() {
		return name_nm;
	}
	public void setName_nm(String name_nm) {
		this.name_nm = name_nm;
	}
	public String getAdmin_gb() {
		return admin_gb;
	}
	public void setAdmin_gb(String admin_gb) {
		this.admin_gb = admin_gb;
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
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public int getGroup_sq() {
		return group_sq;
	}
	public void setGroup_sq(int group_sq) {
		this.group_sq = group_sq;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getBranch_nm() {
		return branch_nm;
	}
	public void setBranch_nm(String branch_nm) {
		this.branch_nm = branch_nm;
	}
	
}
