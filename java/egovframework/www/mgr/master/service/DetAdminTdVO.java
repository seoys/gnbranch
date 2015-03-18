package egovframework.www.mgr.master.service;

public class DetAdminTdVO {
	
	private static final long serialVersionUID = 1L;
	
//	지부명
	private String branch_nm = "";
//	홈페이지 url
	private String homepage_url = "";
//	담당자명
	private String damdang_nm = "";
//	주소1
	private String addr1_nm = "";
//	주소2
	private String addr2_nm = "";
//	우편번호
	private String post_nm = "";
//	위도
	private String lat_nm = "";
//	경도
	private String lon_nm = "";
//	연락처1
	private String phone1_nm = "";
//	연락처2
	private String phone2_nm = "";
//	연락처3
	private String phone3_nm = "";
//	팩스번호1
	private String fax1_nm = "";
//	팩스번호2
	private String fax2_nm = "";
//	팩스번호3
	private String fax3_nm = "";
//	이메일
	private String email_nm = "";
//	업로드파일 고유번호
//	입력일
	private String reg_dt = "";
//	관리자그룹 고유번호
	private int mst_sq = 0;
//	관리자마스터테이블 고유번호
	private int index_sq = 0;
//	교통편
	private String traffic_nm = "";
	
	public String getBranch_nm() {
		return branch_nm;
	}
	public void setBranch_nm(String branch_nm) {
		this.branch_nm = branch_nm;
	}
	public String getHomepage_url() {
		return homepage_url;
	}
	public void setHomepage_url(String homepage_url) {
		this.homepage_url = homepage_url;
	}
	public String getDamdang_nm() {
		return damdang_nm;
	}
	public void setDamdang_nm(String damdang_nm) {
		this.damdang_nm = damdang_nm;
	}
	public String getAddr1_nm() {
		return addr1_nm;
	}
	public void setAddr1_nm(String addr1_nm) {
		this.addr1_nm = addr1_nm;
	}
	public String getAddr2_nm() {
		return addr2_nm;
	}
	public void setAddr2_nm(String addr2_nm) {
		this.addr2_nm = addr2_nm;
	}
	public String getPost_nm() {
		return post_nm;
	}
	public void setPost_nm(String post_nm) {
		this.post_nm = post_nm;
	}
	public String getLat_nm() {
		return lat_nm;
	}
	public void setLat_nm(String lat_nm) {
		this.lat_nm = lat_nm;
	}
	public String getLon_nm() {
		return lon_nm;
	}
	public void setLon_nm(String lon_nm) {
		this.lon_nm = lon_nm;
	}
	public String getPhone1_nm() {
		return phone1_nm;
	}
	public void setPhone1_nm(String phone1_nm) {
		this.phone1_nm = phone1_nm;
	}
	
	public String getPhone2_nm() {
		return phone2_nm;
	}
	public void setPhone2_nm(String phone2_nm) {
		this.phone2_nm = phone2_nm;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getPhone3_nm() {
		return phone3_nm;
	}
	public void setPhone3_nm(String phone3_nm) {
		this.phone3_nm = phone3_nm;
	}
	public String getFax1_nm() {
		return fax1_nm;
	}
	public void setFax1_nm(String fax1_nm) {
		this.fax1_nm = fax1_nm;
	}
	public String getFax2_nm() {
		return fax2_nm;
	}
	public void setFax2_nm(String fax2_nm) {
		this.fax2_nm = fax2_nm;
	}
	public String getFax3_nm() {
		return fax3_nm;
	}
	public void setFax3_nm(String fax3_nm) {
		this.fax3_nm = fax3_nm;
	}
	public String getEmail_nm() {
		return email_nm;
	}
	public void setEmail_nm(String email_nm) {
		this.email_nm = email_nm;
	}

	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}

	public int getMst_sq() {
		return mst_sq;
	}
	public void setMst_sq(int mst_sq) {
		this.mst_sq = mst_sq;
	}
	public int getIndex_sq() {
		return index_sq;
	}
	public void setIndex_sq(int index_sq) {
		this.index_sq = index_sq;
	}
	public String getTraffic_nm() {
		return traffic_nm;
	}
	public void setTraffic_nm(String traffic_nm) {
		this.traffic_nm = traffic_nm;
	}
	
}
