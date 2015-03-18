package egovframework.www.mgr.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import egovframework.www.mgr.login.service.AdminVO;
import egovframework.www.mgr.login.service.impl.MgrMainServiceImpl;

/**
 * @Class MgrSessionController.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2015. 1. 14.
 * @modifyHistory
 * @See
 * 
 */
public class MgrSessionController{
	
	private static final Logger logger = LoggerFactory.getLogger(MgrMainServiceImpl.class);
	
	protected String admin_id = "";
	protected String admin_nm = "";
	protected String admin_email = "";
	protected String admin_dept = "";
	protected String admin_gb = "";
	protected String group_sq = "";
	protected AdminVO sessionVO;
	
	
	public MgrSessionController() {
		sessionVO = new AdminVO();
	}
	
	/**
	 * @author seoys
	 * @Description : 로그인 여부 
	 * @MethodName isMgrLogin
	 * @param model
	 * @param request
	 * @return
	 * @throws Exception
	 */
	protected boolean isMgrLogin(
			ModelMap model
			) throws Exception {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();	
		try {
			HttpSession session = request.getSession(false);
			sessionVO = (AdminVO) session.getAttribute("sessionVO");
			
			if (sessionVO == null) {
				return false;
			} else {
				admin_id = sessionVO.getUser_id();
				admin_nm = sessionVO.getName_nm();
				admin_gb = sessionVO.getAdmin_gb();
				group_sq = sessionVO.getGroup_sq();
				
				model.addAttribute("sessionVO", sessionVO);
				return true;
			}
		} catch (Exception e) {
			logger.error("error: " + e.getMessage());
			return false;
		}
	}
	
	

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_nm() {
		return admin_nm;
	}

	public void setAdmin_nm(String admin_nm) {
		this.admin_nm = admin_nm;
	}

	public String getAdmin_email() {
		return admin_email;
	}

	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}

	public String getAdmin_dept() {
		return admin_dept;
	}

	public void setAdmin_dept(String admin_dept) {
		this.admin_dept = admin_dept;
	}

	public String getAdmin_gb() {
		return admin_gb;
	}

	public void setAdmin_gb(String admin_gb) {
		this.admin_gb = admin_gb;
	}

	public String getGroup_sq() {
		return group_sq;
	}

	public void setGroup_sq(String group_sq) {
		this.group_sq = group_sq;
	}

	public AdminVO getSessionVO() {
		return sessionVO;
	}

	public void setSessionVO(AdminVO sessionVO) {
		this.sessionVO = sessionVO;
	}
}
