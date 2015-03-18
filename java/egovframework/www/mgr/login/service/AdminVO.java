package egovframework.www.mgr.login.service;

/**
 * @Class AdminVO.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2014. 12. 11.
 * @modifyHistory
 * @See
 */
public class AdminVO {
//	테이블 고유번호
	private String index_sq = "";
//	관리자명
	private String name_nm = "";
//	관리자구분
	private String admin_gb = "";
//	사용여부
	private String use_fl = "";
//	입력일
	private String reg_dt = "";
//	관리자 아이디
	private String user_id = "";
//	관리자 비밀번호
	private String user_pwd = "";
//	그룹고유번호
	private String group_sq = "";
	
	public String getIndex_sq() {
		return index_sq;
	}
	public void setIndex_sq(String index_sq) {
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
	public String getGroup_sq() {
		return group_sq;
	}
	public void setGroup_sq(String group_sq) {
		this.group_sq = group_sq;
	}
}
