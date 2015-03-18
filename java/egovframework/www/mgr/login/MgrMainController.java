package egovframework.www.mgr.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.common.MsgVO;
import egovframework.www.mgr.login.service.AdminVO;
import egovframework.www.mgr.login.service.MgrMainService;
import egovframework.www.mgr.login.service.impl.MgrMainServiceImpl;

/**
 * @Class MgrMainController.java
 * @author seoys
 * @info angelskying@naver.com
 * @date 2014. 12. 11.
 * @modifyHistory
 * @See
 */
@Controller
public class MgrMainController extends MgrSessionController{
	
	private static final Logger logger = LoggerFactory.getLogger(MgrMainServiceImpl.class);
	
	@Resource(name="mgrMainService")
	private MgrMainService mgrMainService;
	
	/**
	 * @author seoys
	 * @date 2015. 1. 14.
	 * @Description : 관리자 로그인 
	 * @MethodName mgrMain
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/mgr/login.gn")
	public String mgrLogin() throws Exception{return "mgr/login";}
	
	/**
	 * @author seoys
	 * @date 2015. 1. 16.
	 * @Description : 로그아웃 
	 * @MethodName mgrLogout
	 * @param adminVO
	 * @param model
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/mgr/logout.gn")
	public String mgrLogout(AdminVO adminVO, ModelMap model,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(false);
		session.invalidate();
		
		MsgVO msgVO = new MsgVO();
		msgVO.setUrl("/mgr/login.gn");
		return "alert";
	}
		
	/**
	 * @author seoys
	 * @date 2015. 1. 14.
	 * @Description : 관리자 로그인 확인
	 * @MethodName mgrMemLoginProc
	 * @param model
	 * @param response
	 * @param request
	 * @param adminVO
	 * @throws Exception
	 */
	@RequestMapping("/mgr/memLoginProc.gn")
	public String mgrMemLoginProc(
			ModelMap model,
			HttpServletResponse response,
			HttpServletRequest request,
			AdminVO adminVO
		) throws Exception{
		
		try {
			MsgVO msgVO = new MsgVO();
			AdminVO resultinfo = mgrMainService.mgrMemInfo(adminVO);
			
			if (resultinfo != null && resultinfo.getUser_id() != null && !resultinfo.getUser_id().equals("")) {
				HttpSession session = request.getSession(true);
				
				try {
					session.setAttribute("admin_id", resultinfo.getUser_id());
					session.setAttribute("admin_nm", resultinfo.getName_nm());
					session.setAttribute("admin_gb", resultinfo.getAdmin_gb());
					session.setAttribute("group_sq", resultinfo.getGroup_sq());
					session.setAttribute("sessionVO", resultinfo);
					
//					로그인 그룹권한이 master일경우분기..
					if(resultinfo.getGroup_sq().equals("1")){
						msgVO.setUrl("/mgr/grouplist.gn");
					}
					
					model.addAttribute("msgVO", msgVO);
					model.addAttribute("sessionVO", resultinfo);
				} catch (Exception e) {
					// TODO: handle exception
					logger.error("[ERROR]: " + MgrMainController.class.getName() + ".mgrMemLoginProc(): " + e.getMessage(), e);
				}
			}else{
				msgVO.setMsg("관리자 계정을 다시 확인해 주세요.");
				msgVO.setUrl("/mgr/login.gn");
				model.addAttribute("msgVO", msgVO);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("[ERROR]: " + MgrMainController.class.getName() + ".mgrMemLoginProc(): " + e.getMessage(), e);
		}
		
		return "alert";
	}
	
	
	
}
