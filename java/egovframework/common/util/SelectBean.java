package egovframework.common.util;


public class SelectBean {
	private String code;
	private String name;
	private String val;

	public SelectBean() {
	}

	public SelectBean(String code, String name) {
		this.code = code;
		this.name = name;
	}

	public SelectBean(String code, String name, String val) {
		this.code = code;
		this.name = name;
		this.val = val;
	}
	
	public String getCode() {
		return code == null ? "" : code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name == null ? "" : name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVal() {
		return val == null ? "" : val;
	}

	public void setVal(String val) {
		this.val = val;
	}
}
