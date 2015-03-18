
package egovframework.common;

import java.io.Serializable;
import java.util.List;

/**
 * @Class 	:	MsgVO.java
 * @author 	:	seoys
 * @info 	:	angelskying@naver.com
 * @data 	:	2014. 11. 26. 오후 4:08:31
 * @todo	: 	TODO
 * @modify	: 	
 * @see
 */
public class MsgVO implements Serializable {
	private static final long serialVersionUID = 1L;
	/** 
	 * 	Post_yn N 경우
	 * 		T:top, C:close, B:back, PR:parent, NO:작동안함, CR : opener.reload window.close, CL : opener.location window.close
	 *  Post_yn Y 경우
	 *  	T:_top, C:_opener, PR:_parent, NO:submit안함
	 **/
	private String target = "";
	/** alert 메시지 **/
	private String msg = "";
	/** 이동할 경로 **/
	private String url = "";
	/** post_yn Y : 폼submit **/
	private String post_yn = "N";
	/** name **/
	private String name = "";
	/** value **/
	private String value = "";
	/** list **/
	private List<MsgVO> list = null;
	
	public MsgVO(){}
	public MsgVO(String name, String value){
		setName(name); setValue(value);
	}
		
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPost_yn() {
		return post_yn;
	}
	public void setPost_yn(String post_yn) {
		this.post_yn = post_yn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public List<MsgVO> getList() {
		return list;
	}
	public void setList(List<MsgVO> list) {
		this.list = list;
	}
	
}
