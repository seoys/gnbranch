package egovframework.common.util;


import java.io.*;
import java.util.*;

public class Templates {
	private String fileContent;
	private String htmlPage;
	private Hashtable singleBlock = new Hashtable();
	private Hashtable defDynBlock = new Hashtable();
	private Hashtable tmpDynBlock = new Hashtable();
	private Hashtable refDynBlock = new Hashtable();

	public Templates(){}

	/**
	 * <p>Description : 템플릿 객체 생성자
	 * @param : String 템플릿 파일 경로
	 * @return :
	 */
	public Templates(String templateFile) {
		loadTemplate(templateFile);
	}


	/**
	 * <p>Description : 템플릿 파일을 읽어서 fileContent, htmlPage에 저장한다.
	 * @param : String 템플릿 파일 경로(templateFile)
	 * @return :
	 */
	public void loadTemplate(String templateFile) {
		try {
			FileReader f = new FileReader(templateFile);
			StringBuffer sb = null;
			char c;
			int  i;

			sb = new StringBuffer();
			while ( (i = f.read()) != -1 ){
				c = (char)i;
				sb.append(c);
			}

			fileContent = sb.toString();
			htmlPage    = fileContent;

			sb = null;
			f.close();

		} catch(Exception e) {
			System.err.println(e);
		}
	}


	public void setTemplate(String str) {
		fileContent = str;
		htmlPage    = str;
	}

	/**
	 * <p>Description : 변수와 값을 1:1 대응 시킨다.
	 * @param : String 템플릿 변수(var), String 대치될 값(val)
	 * @return :
	 */
	public void substVar(String var, String val) {
		singleBlock.put(var, new String(val));
	}


	/**
	 * <p>Description : 동적 블록을 읽어 해시 테이블에 저장한다.
	 * @param : String 동적 블록명(dynamic)
	 * @return :
	 */
	public void loadDynamic(String dynamic){
		String sTag = "<!--" + dynamic + "-->";
		String eTag = "<!--/" + dynamic + "-->";

		if(fileContent.indexOf(sTag) != -1 && fileContent.indexOf(eTag) != -1) {
			String dBlock = fileContent.substring(fileContent.indexOf(sTag)+sTag.length(), fileContent.indexOf(eTag));
			defDynBlock.put(dynamic, new String(dBlock));
		}
	}

	/**
	 * <p>Description : 동적 블록의 템플릿 변수와 값을 1:1 대응 시킨다.
	 * @param : String 동적 블록명(dynamic), String 변수명(var), String 변수값(val)
	 * @return :
	 */
	public void substVarDyn (String dynamic, String var, String val) {
		String tBlock = "";

		try {
			if(tmpDynBlock.containsKey(new String(dynamic))) {
				tBlock = tmpDynBlock.get(dynamic).toString();
				tmpDynBlock.remove(new String(dynamic));
			}
			else {
				if(defDynBlock.containsKey(new String(dynamic)))
					tBlock = (defDynBlock.get(dynamic).toString() == null)? "" : defDynBlock.get(dynamic).toString();
				//else System.out.println(dynamic + " : 등록되지 않은 블록입니다.");
			}

			if(!tBlock.equals("")) {
				tBlock = Str2Str(tBlock, "{"+var+"}", val);
				tmpDynBlock.put(dynamic, new String(tBlock));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * <p>Description : 동적 블록을 파싱하여 결과를 해시 테이블에(dynamicDefinitive) 저장한다.
	 * @param : String 동적 블록명(dynamic)
	 * @return :
	 */
	public void parseDynamic(String dynamic){
		String tBlock, dynBlock;

		if(!tmpDynBlock.containsKey(new String(dynamic))) {
			if(defDynBlock.containsKey(new String(dynamic))) {
				String dBlock = defDynBlock.get(dynamic).toString();
				tmpDynBlock.put(dynamic, new String(dBlock));
			}
		}

		Enumeration e = tmpDynBlock.keys();
		while(e.hasMoreElements()){

			if(dynamic.equals(e.nextElement())) {
				tBlock   = tmpDynBlock.get(dynamic).toString();

				if(refDynBlock.containsKey(new String(dynamic))) {
					dynBlock = refDynBlock.get(dynamic).toString() + tBlock;
					refDynBlock.remove(new String(dynamic));
					refDynBlock.put(dynamic, new String(dynBlock));
				}
				else {
					tmpDynBlock.remove(new String(dynamic));
					refDynBlock.put(dynamic, new String(tBlock));
				}

				tmpDynBlock.remove(new String(dynamic));
			}
		}
	}

	/**
	 * <p>Description : 템플릿 변환 최종 결과를 생성한다.
	 * @param :
	 * @return : String 변환 결과(htmlPage)
	 */
	public String parseTemplate(){
		String sTag, eTag, dynamic;
		Enumeration e;

		e = defDynBlock.keys();
		while(e.hasMoreElements()){
			dynamic = e.nextElement().toString();
			sTag = "<!--" + dynamic + "-->";
			eTag = "<!--/" + dynamic + "-->";

			if(refDynBlock.containsKey(new String(dynamic))) {
				htmlPage = htmlPage.substring(0, htmlPage.indexOf(sTag)) + refDynBlock.get(dynamic).toString() + htmlPage.substring(htmlPage.indexOf(eTag)+eTag.length());
			}
			else {
				htmlPage = htmlPage.substring(0, htmlPage.indexOf(sTag)) + htmlPage.substring(htmlPage.indexOf(eTag)+eTag.length());
			}
		}

		e = singleBlock.keys();
		while(e.hasMoreElements()){
			dynamic = e.nextElement().toString();
			htmlPage = Str2Str(htmlPage, "{" + dynamic + "}", singleBlock.get(dynamic).toString());
		}

		return htmlPage;
	}

	/**
	 * <p>Description : 템플릿 원본을 리턴한다.
	 * @param :
	 * @return : String 템플릿 원본(fileContent)
	 */
	public String printTemplate(){
		return fileContent;
	}

	/**
	 * <p>Description : 문자열중 지정 문자열을 대치 문자열로 바꿈
	 * @param
	 *  - str      : 입력 문자열
	 *  - pattern  : 대치시킬 문자열
	 *  - replace  : 대치 문자열
	 * @return
	 *  - return   : 대치된 문자열
	 */
	public static String Str2Str(String str, String pattern, String replace) {
		int s = 0;
		int e = 0;
		StringBuffer result = new StringBuffer();

		while ((e = str.indexOf(pattern, s)) >= 0) {
			result.append(str.substring(s, e));
			result.append(replace);
			s = e + pattern.length();
		}
		result.append(str.substring(s));

		return result.toString();
	}
}
