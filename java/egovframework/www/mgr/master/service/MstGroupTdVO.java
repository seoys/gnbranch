package egovframework.www.mgr.master.service;

public class MstGroupTdVO {
	
//	그룹고유번호
	private int group_sq = 0;
//	그룹명
	private String group_nm = "";
//	그룹사용여부
	private String use_fl   = "";
//	작성일
	private String reg_dt   = "";
	
	
	public int getGroup_sq() {
		return group_sq;
	}
	public void setGroup_sq(int group_sq) {
		this.group_sq = group_sq;
	}
	public String getGroup_nm() {
		return group_nm;
	}
	public void setGroup_nm(String group_nm) {
		this.group_nm = group_nm;
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
	
	
	
}
