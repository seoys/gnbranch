package egovframework.common;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonExcelDown {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonExcelDown.class);
	
	@RequestMapping("/excelDownload.gn")
	public String mgrExcelDown(
		HttpServletResponse response
		) throws Exception{
		
		return "excel";
	}
}
