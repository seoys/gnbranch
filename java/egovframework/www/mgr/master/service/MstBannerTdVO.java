package egovframework.www.mgr.master.service;

import egovframework.common.CommonSearchVO;

/**
 * @Class MstBannerTdVO.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 1. 30.
 * @modifyHistory
 * @See
 */
public class MstBannerTdVO extends CommonSearchVO {
	
	private static final long serialVersionUID = 1L;
	
//	테이블고유번호
	private int banner_sq = 0;
//	배너명
	private String banner_nm = "";
//	배너url
	private String banner_url = "";
//	노출기간 시작
	private String start_dt = "";
//	노출여부
	private String use_fl = "";
//	입력일
	private String reg_dt = "";
//	노출기간 마지막
	private String end_dt = "";
//	그룹고유번호
	private int group_sq = 0;
//	배너구분(M>메인베너,F>패밀리배너
	private String kind_fl = "";
//	등록자 아이디
	private String user_id = "";
//	노출순서
	private int orderby_cnt = 0;
	
	
	
	public int getOrderby_cnt() {
		return orderby_cnt;
	}
	public void setOrderby_cnt(int orderby_cnt) {
		this.orderby_cnt = orderby_cnt;
	}
	public int getBanner_sq() {
		return banner_sq;
	}
	public void setBanner_sq(int banner_sq) {
		this.banner_sq = banner_sq;
	}
	public String getBanner_nm() {
		return banner_nm;
	}
	public void setBanner_nm(String banner_nm) {
		this.banner_nm = banner_nm;
	}
	public String getBanner_url() {
		return banner_url;
	}
	public void setBanner_url(String banner_url) {
		this.banner_url = banner_url;
	}
	public String getStart_dt() {
		return start_dt;
	}
	public void setStart_dt(String start_dt) {
		this.start_dt = start_dt;
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
	public String getEnd_dt() {
		return end_dt;
	}
	public void setEnd_dt(String end_dt) {
		this.end_dt = end_dt;
	}
	public int getGroup_sq() {
		return group_sq;
	}
	public void setGroup_sq(int group_sq) {
		this.group_sq = group_sq;
	}
	public String getKind_fl() {
		return kind_fl;
	}
	public void setKind_fl(String kind_fl) {
		this.kind_fl = kind_fl;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
}
