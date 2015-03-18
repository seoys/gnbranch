package egovframework.common.util;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import egovframework.common.CommonSearchVO;
import egovframework.common.service.EgovFileMngUtil;


public class StringUtil {
	
	private static final Logger logger = LoggerFactory.getLogger(StringUtil.class);
	
	/**
	 * 날짜 String 에서 한글 삭제
	 * 
	 * @param String
	 *            sUserInput 대상문자열
	 * @return String sUserInput 한글삭제된 문자열
	 */
	public static String dateFormat(String sUserInput) {
		
		String datePattern = "[\uAC00-\uD7A3]";
		if (sUserInput == null)
			return null;
		
		sUserInput = sUserInput.replaceAll(datePattern, "/");
		String[] dateArr = sUserInput.split("/");
		if (dateArr.length == 3) {
			for (int i = 1; i < dateArr.length; i++) {
				if (dateArr[i].length() < 2) {
					dateArr[i] = "0" + dateArr[i];
				}
			}
			sUserInput = dateArr[0] + dateArr[1] + dateArr[2];
		}
		
		return sUserInput;
	}
	
	/**
	 * 문자수 단위로 문자열을 자른다.
	 * 
	 * @param s
	 *            자를 문자열
	 * @param i
	 *            자를 수
	 * @param plusStr
	 *            플러스될 문자열
	 */
	public static String cutStringPlus(String s, int i, String plusStr) {
		String str = "";
		if (s.length() <= i)
			return s;
		str = s.substring(0, i);
		return str + plusStr;
	}
	
	/**
	 * 바이트 단위로 문자열을 자른다.
	 * 
	 * @param s
	 *            자를 문자열
	 * @param i
	 *            자를 수
	 * @param plusStr
	 *            플러스될 문자열
	 */
	public static String cutStringPlusByBytes(String s, int i, String plusStr) {
		if (getString(s).equals(""))
			return "";
		
		byte abyte0[] = s.getBytes();
		int j = abyte0.length;
		int k = 0;
		if (i >= j)
			return s;
		for (int l = i - 1; l >= 0; l--)
			if ((abyte0[l] & 0x80) != 0)
				k++;
		String str = new String(abyte0, 0, i - k % 3);
		return str + plusStr;
	}
	
	public static String replace(String source, String fromStr, String toStr) {
		if (source == null)
			return null;
		int start = 0;
		int end = 0;
		StringBuffer result = new StringBuffer();
		while ((end = source.indexOf(fromStr, start)) >= 0) {
			result.append(source.substring(start, end));
			result.append(toStr);
			start = end + fromStr.length();
		}
		result.append(source.substring(start));
		return result.toString();
	}
	
	public static String getChangeId(String id) {
		if (id.length() <= 3)
			return id;
		
		String str = "";
		
		str = id.substring(0, id.length() - 3) + "***";
		
		return str;
	}
	
	public static String getChangeEmail(String email) {
		String arr_str[] = email.split("@");
		String str = "";
		
		if (arr_str.length != 2)
			return email;
		
		for (int i = 0; i < arr_str[0].length(); i++) {
			str += "*";
		}
		
		str = str + "@" + arr_str[1];
		
		return str;
	}
	
	/**
	 * 이메일로 된 아이디 자르기
	 * 
	 * @param email
	 * @return
	 */
	
	public static String getChangeIdMail(String id) {
		String[] str = id.split("@");
		
		return str[0];
	}
	
	/**
	 * 일련번호 생성 : 년도(2)+월(2)+일(2)+날짜별일련번호(8)+랜덤키(2)
	 * 
	 * @return
	 * @throws InterruptedException
	 *             , Exception
	 */
	public static synchronized String getSerial() throws InterruptedException, Exception {
		
		Thread.sleep(1); // 0.001 초의 오차를 없애기 위해 0.001 초간 쉼
		
		String prefix = "";
		String serial = "" + System.currentTimeMillis();
		String random = "";
		
		// 8자리 자름
		serial = serial.substring(4, 12);
		
		Calendar date = Calendar.getInstance(TimeZone.getDefault());
		int year = date.get(Calendar.YEAR);
		int month = date.get(Calendar.MONTH) + 1;
		int day = date.get(Calendar.DAY_OF_MONTH);
		
		prefix += year;
		
		// 년도는 뒤 두자리만 사용하고 랜덤 2자리를 첨가
		prefix = prefix.substring(2);
		
		prefix += (month < 10) ? "0" + month : month;
		prefix += (day < 10) ? "0" + day : day;
		
		int nRandom = (int) (Math.random() * 100);
		
		random = (nRandom < 10) ? "0" + nRandom : nRandom + "";
		
		return prefix + serial + random;
	}
	
	/**
	 * Html 태그 제거
	 * 
	 * @return
	 * @throws Exception
	 */
	public static String rmHtmlTag(String html) {
		
		String temp = "";
		String htmlPattern = "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>";
		
		if (html != null) {
			temp = html.replaceAll(htmlPattern, "");
			temp = temp.replaceAll("&nbsp;", " ");
		}
		
		return temp;
	}
	
	/**
	 * Html 태그 변경
	 * 
	 * @return
	 * @throws Exception
	 */
	public static String replaceHtmlTag(String html) {
		
		String temp = html;
		
		if (html != null) {
			temp = temp.replaceAll("&lt;", "<");
			temp = temp.replaceAll("&nbsp;", " ");
			temp = temp.replaceAll("&gt;", ">");
		}
		
		return temp;
	}
	
	/**
	 * addComma
	 * 
	 * @param szBuf
	 * @return
	 */
	public static String addComma(String szBuf) throws Exception {
		
		int j = 0;
		String retBuf = "";
		
		if ((szBuf == null) || (szBuf.equals("")))
			return "";
		if ((szBuf.indexOf(",") >= 0) || (szBuf.length() <= 3))
			return szBuf;
		
		for (int i = szBuf.length() - 1; i >= 0; i--) {
			if (szBuf.substring(i, i + 1).equals(".") || szBuf.substring(i, i + 1).equals("-"))
				j = -1;
			else if (j == 3) {
				retBuf = "," + retBuf;
				j = 0;
			}
			retBuf = szBuf.substring(i, i + 1) + retBuf;
			j++;
		}
		return retBuf;
	}
	
	/**
	 * 엔터키 BR 태그로 교체
	 * 
	 * @return
	 * @throws Exception
	 */
	public static String repEnterKey(String str) throws Exception {
		
		if (str != null)
			str = str.replaceAll(System.getProperty("line.separator"), "<br />");
		
		return str;
	}
	
	/**
	 * BR 태그 엔터키로 교체
	 * 
	 * @return
	 * @throws Exception
	 */
	public static String brReplaceEnter(String str) throws Exception {
		
		if (str != null)
			str = str.replaceAll("<br />", System.getProperty("line.separator"));
		
		return str;
	}
	
	/**
	 * 숫자앞에 0 갯수 만큼 붙인다.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static String setZeroValue(int value, int num) {
		if (value == 0)
			return "0";
		
		String str = "";
		
		for (int i = Integer.toString(value).length(); i < num; i++) {
			str += "0";
		}
		str += Integer.toString(value);
		
		return str;
	}
	
	/**
	 * 소숫점 자리수 자른다.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static double setNumberFormat(double numb, int decimal) {
		try {
			String ftype = "###,##0";
			if (decimal > 0) {
				ftype += ".";
				for (int i = 0; i < decimal; i++) {
					ftype += "0";
				}
			}
			DecimalFormat format = new DecimalFormat(ftype);
			return Double.parseDouble(format.format(numb));
		} catch (Exception e) {
		}
		return 0.0;
	}
	
	/**
	 * 파일스트리밍 결과 스트링값 리턴
	 * 
	 * @return
	 * @throws Exception
	 */
	public static String getReadFile(String fileName, int disGb) throws Exception {
		
		String fileCont = "";
		String line = "";
		
		try {
			FileReader filer = new FileReader(new File(fileName));
			BufferedReader bufr = new BufferedReader(filer);
			line = "";
			
			while ((line = bufr.readLine()) != null) {
				if (disGb == 1)
					fileCont += line + System.getProperty("line.separator");
				else
					fileCont += line + "<BR>";
			}
			bufr.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return fileCont;
	}
	
	/**
	 * 매장 구분
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> storeType() throws Exception {
		String[] code = { "01", "02" };
		String[] name = { "직영점", "대리점" };
		
		return setSelectBeanList(code, name);
	}
	
	public static String getStoreType(String type) {
		if ("01".equals(type))
			return "직영점";
		else if ("02".equals(type))
			return "대리점";
		else
			return "-";
	}
	
	/**
	 * 지역 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> regionList() throws Exception {
		String[] code = { "02", "031", "032", "033", "041", "042", "043", "051", "052", "053", "054", "055", "061", "062", "063", "064" };
		String[] name = { "서울", "경기", "인천", "강원", "충남", "대전", "충북", "부산", "울산", "대구", "경북", "경남", "전남", "광주", "전북", "제주" };
		
		return setSelectBeanList(code, name);
	}
	
	/**
	 * 지역 리스트2
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> regionList2() throws Exception {
		String[] code = { "02", "031", "032", "033", "041", "042", "043", "051", "052", "053", "054", "055", "061", "062", "063", "064", "86", "81", "82" };
		String[] name = { "서울", "경기", "인천", "강원", "충남", "대전", "충북", "부산", "울산", "대구", "경북", "경남", "전남", "광주", "전북", "제주", "중국", "일본", "한국" };
		
		return setSelectBeanList(code, name);
	}
	
	public static String getRegion(String region) {
		if ("02".equals(region))
			return "서울";
		else if ("031".equals(region))
			return "경기도";
		else if ("032".equals(region))
			return "인천";
		else if ("033".equals(region))
			return "강원도";
		else if ("041".equals(region))
			return "충청남도";
		else if ("042".equals(region))
			return "대전";
		else if ("043".equals(region))
			return "충청북도";
		else if ("051".equals(region))
			return "부산";
		else if ("052".equals(region))
			return "울산";
		else if ("053".equals(region))
			return "대구";
		else if ("054".equals(region))
			return "경상북도";
		else if ("055".equals(region))
			return "경상남도";
		else if ("061".equals(region))
			return "전라남도";
		else if ("062".equals(region))
			return "광주";
		else if ("063".equals(region))
			return "전라북도";
		else if ("064".equals(region))
			return "제주도";
		else if ("82".equals(region))
			return "한국";
		else if ("86".equals(region))
			return "중국";
		else if ("81".equals(region))
			return "일본";
		else
			return "-";
		
	}
	
	/**
	 * 메일 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> emailList() throws Exception {
		return emailList("", true);
	}
	
	/**
	 * 메일 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> emailList(String defaultValue) throws Exception {
		return emailList(defaultValue, true);
	}
	
	/**
	 * 메일 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> emailList(boolean bUseDefaultValue) throws Exception {
		return emailList("", bUseDefaultValue);
	}
	
	/**
	 * 메일 리스트
	 * 
	 * @param defaultValue
	 * @param bUseDefaultValue
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> emailList(String defaultValue, boolean bUseDefaultValue) throws Exception {
		SelectBean mailListBean = null;
		ArrayList<SelectBean> list = new ArrayList<SelectBean>();
		String[] email = null;
		String[] email_name = null;
		
		if (bUseDefaultValue) {
			email = new String[] { "naver.com", "nate.com", "dreamwiz.com", "yahoo.co.kr", "empal.com", "unitel.co.kr", "gmail.com", "korea.com", "chol.com", "paran.com", "freechal.com",
					"hanmail.net", "hotmail.com", defaultValue };
			email_name = new String[] { "naver.com", "nate.com", "dreamwiz.com", "yahoo.co.kr", "empal.com", "unitel.co.kr", "gmail.com", "korea.com", "chol.com", "paran.com", "freechal.com",
					"hanmail.net", "hotmail.com", "직접입력" };
		} else {
			email = new String[] { "naver.com", "nate.com", "dreamwiz.com", "yahoo.co.kr", "empal.com", "unitel.co.kr", "gmail.com", "korea.com", "chol.com", "paran.com", "freechal.com",
					"hanmail.net", "hotmail.com" };
			email_name = new String[] { "naver.com", "nate.com", "dreamwiz.com", "yahoo.co.kr", "empal.com", "unitel.co.kr", "gmail.com", "korea.com", "chol.com", "paran.com", "freechal.com",
					"hanmail.net", "hotmail.com" };
		}
		
		for (int i = 0; i < email.length; i++) {
			mailListBean = new SelectBean();
			mailListBean.setCode(email[i]);
			mailListBean.setName(email_name[i]);
			
			list.add(mailListBean);
		}
		return list;
	}
	
	/**
	 * 월별 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> monthEnList() throws Exception {
		SelectBean mailListBean = null;
		ArrayList<SelectBean> list = new ArrayList<SelectBean>();
		String[] code = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" };
		String[] name = { "Jan.", "Feb.", "Mar.", "Apr.", "May.", "Jun.", "Jul.", "Aug.", "Sep.", "Oct.", "Nov.", "Dec." };
		for (int i = 0; i < code.length; i++) {
			mailListBean = new SelectBean();
			mailListBean.setCode(code[i]);
			mailListBean.setName(name[i]);
			
			list.add(mailListBean);
		}
		return list;
	}
	
	/**
	 * 은행 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> bankList() throws Exception {
		SelectBean mailListBean = null;
		ArrayList<SelectBean> list = new ArrayList<SelectBean>();
		String[] code = { "04", "88", "11", "20", "07", "81", "05", "53", "23", "00" };
		String[] name = { "국민", "신한", "농협", "우리", "수협", "하나", "외환", "한국씨티", "SC제일", "기타" };
		for (int i = 0; i < code.length; i++) {
			mailListBean = new SelectBean();
			mailListBean.setCode(code[i]);
			mailListBean.setName(name[i]);
			
			list.add(mailListBean);
		}
		return list;
	}
	
	// 년도를 시작연도와 끝연도를 지정
	public static ArrayList<SelectBean> yearList(int s, int e) throws Exception {
		SelectBean selectBean = null;
		ArrayList<SelectBean> list = new ArrayList<SelectBean>();
		for (int i = s; i <= e; i++) {
			selectBean = new SelectBean();
			selectBean.setCode(i + "");
			selectBean.setName(i + "");
			
			list.add(selectBean);
		}
		return list;
	}
	
	public static ArrayList<String> monthList() throws Exception {
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("01");
		list.add("02");
		list.add("03");
		list.add("04");
		list.add("05");
		list.add("06");
		list.add("07");
		list.add("08");
		list.add("09");
		list.add("10");
		list.add("11");
		list.add("12");
		
		return list;
	}
	
	public static ArrayList<String> dayList() throws Exception {
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("01");
		list.add("02");
		list.add("03");
		list.add("04");
		list.add("05");
		list.add("06");
		list.add("07");
		list.add("08");
		list.add("09");
		list.add("10");
		list.add("11");
		list.add("12");
		list.add("13");
		list.add("14");
		list.add("15");
		list.add("16");
		list.add("17");
		list.add("18");
		list.add("19");
		list.add("20");
		list.add("21");
		list.add("22");
		list.add("23");
		list.add("24");
		list.add("25");
		list.add("26");
		list.add("27");
		list.add("28");
		list.add("29");
		list.add("30");
		list.add("31");
		return list;
	}
	
	/**
	 * 전화번호 지역번호 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<String> phoneList() throws Exception {
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("02");
		list.add("031");
		list.add("032");
		list.add("033");
		list.add("041");
		list.add("042");
		list.add("043");
		list.add("051");
		list.add("052");
		list.add("053");
		list.add("054");
		list.add("055");
		list.add("061");
		list.add("062");
		list.add("063");
		list.add("064");
		list.add("0502");
		list.add("0505");
		list.add("070");
		list.add("080");
		
		return list;
	}
	
	/**
	 * 휴대폰번호 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<String> pcsList() throws Exception {
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("010");
		list.add("011");
		list.add("016");
		list.add("017");
		list.add("018");
		list.add("019");
		
		return list;
	}
	
	/**
	 * 전화번호 지역번호/휴대폰번호 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<String> phoneHpList() throws Exception {
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("02");
		list.add("031");
		list.add("032");
		list.add("033");
		list.add("041");
		list.add("042");
		list.add("043");
		list.add("051");
		list.add("052");
		list.add("053");
		list.add("054");
		list.add("055");
		list.add("061");
		list.add("062");
		list.add("063");
		list.add("064");
		list.add("0502");
		list.add("0505");
		list.add("070");
		list.add("010");
		list.add("011");
		list.add("016");
		list.add("017");
		list.add("018");
		list.add("019");
		
		return list;
	}
	
	/**
	 * 생년/월/일 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<String> birthdayList(int s, int e) throws Exception {
		ArrayList<String> list = new ArrayList<String>();
		
		for (int i = s; i <= e; i++) {
			if (i > 9) {
				list.add(Integer.toString(i));
			} else {
				list.add("0" + Integer.toString(i));
			}
		}
		return list;
	}
	
	/**
	 * 셀렉트박스 리스트 셋팅
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> setSelectBeanList(String[] code, String[] name) throws Exception {
		SelectBean selectBean = null;
		ArrayList<SelectBean> list = new ArrayList<SelectBean>();
		for (int i = 0; i < code.length; i++) {
			selectBean = new SelectBean();
			selectBean.setCode(code[i]);
			selectBean.setName(name[i]);
			
			list.add(selectBean);
		}
		
		return list;
	}
	
	/**
	 * 태그 추가 ('\r' => "<BR/>
	 * \r")
	 * 
	 * @return
	 * @throws Exception
	 */
	public String nl2br(String s) {
		int i = s.length();
		StringBuffer stringbuffer = new StringBuffer();
		for (int j = 0; j < i; j++) {
			String s1 = s.substring(j, j + 1);
			if ("\r".compareTo(s1) == 0) {
				s1 = s.substring(++j, j + 1);
				if ("\n".compareTo(s1) == 0)
					stringbuffer.append("<BR/>\r");
				else
					stringbuffer.append("\r");
			}
			stringbuffer.append(s1);
		}
		
		return stringbuffer.toString();
	}
	
	/**
	 * 오늘 날짜 얻기 by khj
	 * 
	 * @return String today 오늘날짜 YYYYMMDD
	 */
	public static String getToDate() {
		
		Calendar cal = Calendar.getInstance();
		String today = cal.get(Calendar.YEAR) + "-" + ((cal.get(Calendar.MONTH) + 1) < 10 ? "0" + (cal.get(Calendar.MONTH) + 1) : (cal.get(Calendar.MONTH) + 1)) + "-"
				+ (cal.get(Calendar.DATE) < 10 ? "0" + cal.get(Calendar.DATE) : cal.get(Calendar.DATE));
		
		return today;
	}
	
	public static String getToDate(String gb) {
		
		Calendar cal = Calendar.getInstance();
		String today = cal.get(Calendar.YEAR) + gb + ((cal.get(Calendar.MONTH) + 1) < 10 ? "0" + (cal.get(Calendar.MONTH) + 1) : (cal.get(Calendar.MONTH) + 1)) + gb
				+ (cal.get(Calendar.DATE) < 10 ? "0" + cal.get(Calendar.DATE) : cal.get(Calendar.DATE));
		
		return today;
	}
	
	/**
	 * KSC5601로 인코딩된 문자열을 ISO8859_1로 변환한다.
	 * 
	 * @param str5601
	 *            KSC5601로 encoding된 String
	 * @return ISO8859_1로 변환된 String
	 */
	public static String toEng(String name) {
		
		if (name == null)
			return null;
		
		String str8859 = null;
		
		try {
			str8859 = new String(name.getBytes("euc-kr"), "8859_1");
		} catch (UnsupportedEncodingException e) {
			str8859 = name;
		}
		
		return str8859;
	}
	
	public static void main(String[] args) {
		System.out.println("getChangeId-->" + getChangeId("asfg"));
		System.out.println("getChangeEmail-->" + getChangeEmail("aadf@sfg"));
		System.out.println(setNumberFormat(123.4312, 0));
		// setNumberFormat("123.4314",3);
	}
	
	/**
	 * 문자열을 byte의 기준값으로 잘라서 배열로 리턴
	 * 
	 * @param raw
	 *            : 문자열 len : byte 기준값
	 * @return String[] 배열
	 */
	public static String[] splitBytes(String raw, int len) {
		
		if (raw == null)
			return null;
		
		String[] ary = null;
		
		try {
			byte[] rawBytes = raw.getBytes("MS949");
			int rawLength = rawBytes.length;
			// 문자열의 총길이 > 분할단위 일 때
			
			if (rawLength > len) {
				int aryLength = (rawLength / len) + (rawLength % len != 0 ? 1 : 0);
				ary = new String[aryLength];
				int endCharIndex = 0;
				
				String tmp;
				
				for (int i = 0; i < aryLength; i++) {
					
					if (i == (aryLength)) {
						tmp = raw.substring(endCharIndex);
					} else {
						int useByteLength = 0;
						int rSize = 0;
						
						for (; endCharIndex < raw.length(); endCharIndex++) {
							
							if (raw.charAt(endCharIndex) > 0x007F)
								useByteLength += 2;
							else
								useByteLength++;
							
							if (useByteLength > len)
								break;
							
							rSize++;
						}
						
						tmp = raw.substring((endCharIndex - rSize), endCharIndex);
					}
					ary[i] = tmp;
				}
				
				tmp = raw.substring(endCharIndex);
				
				if (tmp.length() > 0) {
					
					String[] tmpSet = new String[ary.length + 1];
					
					for (int j = 0; j < ary.length; j++) {
						tmpSet[j] = ary[j];
					}
					
					tmpSet[tmpSet.length - 1] = tmp;
					return tmpSet;
				}
			} else {
				ary = new String[] { raw };
			}
		} catch (java.io.UnsupportedEncodingException e) {
		}
		return ary;
	}
	
	/**
	 * 대소문자를 상관하지 않고 str 문자열에 포함된 keyword 를 찾아서 원래의 문자에 붉은색 폰트태그를 삽입한 문자열 반환 Method markKeyword.
	 * 
	 * @param str
	 * @param keyword
	 * @return String
	 */
	public static String markKeyword(String str, String keyword) {
		
		keyword = replace(replace(replace(keyword, "[", "\\["), ")", "\\)"), "(", "\\s(");
		
		Pattern p = Pattern.compile(keyword, Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(str);
		int start = 0;
		int lastEnd = 0;
		
		StringBuffer sbuf = new StringBuffer();
		
		while (m.find()) {
			start = m.start();
			sbuf.append(str.substring(lastEnd, start)).append("<strong class=bld5>" + m.group() + "</strong>");
			lastEnd = m.end();
		}
		return sbuf.append(str.substring(lastEnd)).toString();
	}
	
	// 한글 변환 US7ASCII에서 가져온 data한글로 변환
	
	public static String toKorean(String s) {
		String s1 = null;
		try {
			if (s == null)
				return "";
			s1 = new String(s.getBytes("8859_1"), "KSC5601");
		} catch (UnsupportedEncodingException unsupportedencodingexception) {
		}
		return s1;
	}
	
	// 한글 변환 US7ASCII로 한글 넣을때
	public static String fromKorean(String s) {
		String s1 = null;
		try {
			if (s == null)
				return "";
			s1 = new String(s.getBytes("KSC5601"), "8859_1");
		} catch (UnsupportedEncodingException unsupportedencodingexception) {
		}
		return s1;
	}
	
	public static String getYYMM() {
		java.util.Date da = new java.util.Date();
		GregorianCalendar realDate = new GregorianCalendar();
		realDate.setTime(da);
		int year = realDate.get(GregorianCalendar.YEAR);
		int month = realDate.get(GregorianCalendar.MONTH) + 1;
		String strMonth = String.valueOf(month);
		if (month < 10) {
			strMonth = "0" + strMonth;
		}
		String sId = String.valueOf(year) + strMonth;
		return sId;
	}
	
	/**
	 * 달력 현재 요일 한글로 리턴
	 * 
	 * @param key
	 * @return
	 */
	public static String getKoreanDay(int key) {
		switch (key) {
			case Calendar.MONTH:
				return "월";
			case Calendar.TUESDAY:
				return "화";
			case Calendar.WEDNESDAY:
				return "수";
			case Calendar.THURSDAY:
				return "목";
			case Calendar.FRIDAY:
				return "금";
			case Calendar.SATURDAY:
				return "토";
			case Calendar.SUNDAY:
				return "일";
		}
		return null;
	}
	
	public static String getHandphone(String phone) {
		String handphone = "";
		
		if (phone == null) {
			return "---";
		}
		
		int ct = phone.indexOf("-");
		
		if (ct == 3) {
			return phone;
		}
		
		String tm = phone.replaceAll("-", "");
		
		if (tm.length() >= 11) {
			String tel1 = tm.substring(0, 3);
			String tel2 = tm.substring(3, 7);
			String tel3 = tm.substring(7, 11);
			
			handphone = tel1 + "-" + tel2 + "-" + tel3;
		} else if (tm.length() >= 7) {
			String tel1 = tm.substring(0, 3);
			String tel2 = tm.substring(3, 7);
			String tel3 = tm.substring(7);
			
			handphone = tel1 + "-" + tel2 + "-" + tel3;
		} else if (tm.length() >= 3) {
			String tel1 = tm.substring(0, 3);
			String tel2 = tm.substring(3);
			
			handphone = tel1 + "-" + tel2 + "-";
		} else {
			handphone = tm + "--";
		}
		
		return handphone;
	}
	
	/**
	 * Get string(if object is null, return empty string).
	 * 
	 * @param Object
	 * @return String
	 */
	public static String getString(Object object) {
		if (object == null)
			return "";
		else
			return (String) object;
	}
	
	/**
	 * Get Arraystring : trim() 함수 추가
	 * 
	 * @param String
	 *            [], String
	 * @return String
	 */
	public static String getArrayString(String str, String gubun) {
		String temp = "";
		if (str == null) {
			return "";
		} else {
			String[] tmp = str.split(gubun);
			for (int i = 0; i < tmp.length; i++) {
				temp = temp + "'" + tmp[i].trim() + "',";
			}
			return temp.substring(0, temp.length() - 1);
		}
	}
	
	public static String getArrayString(String[] str, String gubun) {
		String temp = "";
		if (str == null || str.length < 1) {
			return "";
		} else {
			for (int i = 0; i < str.length; i++) {
				temp = temp + str[i].trim() + gubun;
			}
			return temp.substring(0, temp.length() - gubun.length());
		}
	}
	
	/**
	 * 시간 리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> selTimeList() throws Exception {
		SelectBean selectBean = null;
		ArrayList<SelectBean> list = new ArrayList<SelectBean>();
		for (int i = 0; i < 24; i++) {
			selectBean = new SelectBean();
			String tmp = "";
			if (i < 10) {
				tmp = "0";
			}
			tmp = tmp + i;
			selectBean.setCode(tmp + ":00");
			selectBean.setName(tmp + ":00");
			list.add(selectBean);
			
			selectBean = new SelectBean();
			selectBean.setCode(tmp + ":30");
			selectBean.setName(tmp + ":30");
			list.add(selectBean);
		}
		
		return list;
	}
	
	/**
	 * lpad 함수
	 * 
	 * @param str
	 *            대상문자열, len 길이, addStr 대체문자
	 * @return 문자열
	 */
	
	public static String lpad(String str, int len, String addStr) {
		String result = str;
		int templen = len - result.length();
		
		for (int i = 0; i < templen; i++) {
			result = addStr + result;
		}
		
		return result;
	}
	
	/**
	 * 입력문자가 null이면 대체문자열로 return
	 * 
	 * @return
	 */
	public static String NVL(String fString, String toString) {
		if (fString == null)
			return toString;
		else
			return fString;
	}
	
	/**
	 * Beauty Gossip 링크 구분 값
	 * 
	 * @return
	 * @throws Exception
	 */
	
	public static ArrayList<SelectBean> LinkGubun() throws Exception {
		String[] code = { "NAVER", "DAUM", "GOOGLE", "NATE", "YAHOO", "PARAN", "DREAMWIZ", "FREECHAL" };
		String[] name = { "네이버", "다음", "구글", "네이트", "야후", "파란", "드림위즈", "프리챌" };
		
		return setSelectBeanList(code, name);
	}
	
	/**
	 * Beauty Gossip 링크 구분 이미지
	 * 
	 * @return
	 * @throws Exception
	 */
	
	public static String getLinkImg(String icon) {
		if ("NAVER".equals(icon))
			return "img_naver.jpg";
		else if ("DAUM".equals(icon))
			return "img_daum.jpg";
		else if ("GOOGLE".equals(icon))
			return "img_google.jpg";
		else if ("NATE".equals(icon))
			return "img_nate.jpg";
		else if ("YAHOO".equals(icon))
			return "img_yahoo.jpg";
		else if ("PARAN".equals(icon))
			return "img_paran.jpg";
		else if ("DREAMWIZ".equals(icon))
			return "img_dreamwiz.jpg";
		else if ("FREECHAL".equals(icon))
			return "img_freechal.jpg";
		else
			return "noimg_100.jpg";
	}
	
	/**
	 * 문자열이 null 이거나 공백이면 defaultValue 반환
	 * 
	 * @param str
	 * @param defaultValue
	 * @return
	 */
	public static String getString(String str, String defaultValue) {
		String temp = getString(str);
		if (temp.equals("")) {
			temp = defaultValue;
		}
		return temp;
	}
	
	public static String getStringAtIndex(Object obj, int index) {
		String str = StringUtil.getString(String.valueOf(obj), "");
		if (index + 1 > str.length())
			return "";
		return String.valueOf(str.charAt(index));
	}
	
	public static String addStar(String str, String dv) {
		String tmp = "";
		if (str.equals(""))
			return "";
		
		for (int i = 0; i < str.length(); i++) {
			String tmp2 = dv;
			if (str.substring(i, i + 1).equals(",")) {
				tmp2 = ",";
			}
			tmp += tmp2;
		}
		return tmp;
	}
	
	/**
	 * 브라우저 기본 언어 가져오기
	 * 
	 * @param request
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static String getLanguage(HttpServletRequest request) {
		String temp = "";
		Enumeration enm = request.getHeaders("Accept-Language");
		if (enm.hasMoreElements()) {
			temp = (String) enm.nextElement();
		}
		if (temp.length() > 1) {
			temp = temp.substring(0, 2).toLowerCase();
		} else {
			temp = "";
		}
		return temp;
	}
	
	/**
	 * 숫자형인지 아닌지 체크
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNumber(String str) {
		try {
			Integer.parseInt(str.trim());
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	/**
	 * 랜덤으로 패스위드 생성 P:특수기호, A:대문자, S:소문자, I:숫자 , C: 소문자/숫자 혼합
	 * 
	 * @param type
	 * @param cnt
	 * @return
	 */
	public static String randomPassword(String type, int cnt) {
		
		StringBuffer strPwd = new StringBuffer();
		char str[] = new char[1];
		// 특수기호 포함
		if (type.equals("P")) {
			for (int i = 0; i < cnt; i++) {
				str[0] = (char) ((Math.random() * 94) + 33);
				strPwd.append(str);
			}
			// 대문자로만
		} else if (type.equals("A")) {
			for (int i = 0; i < cnt; i++) {
				str[0] = (char) ((Math.random() * 26) + 65);
				strPwd.append(str);
			}
			// 소문자로만
		} else if (type.equals("S")) {
			for (int i = 0; i < cnt; i++) {
				str[0] = (char) ((Math.random() * 26) + 97);
				strPwd.append(str);
			}
			// 숫자형으로
		} else if (type.equals("I")) {
			int strs[] = new int[1];
			for (int i = 0; i < cnt; i++) {
				strs[0] = (int) (Math.random() * 9);
				strPwd.append(strs[0]);
			}
			// 소문자, 숫자형
		} else if (type.equals("C")) {
			Random rnd = new Random();
			for (int i = 0; i < cnt; i++) {
				if (rnd.nextBoolean()) {
					strPwd.append((char) ((int) (rnd.nextInt(26)) + 97));
				} else {
					strPwd.append((rnd.nextInt(10)));
				}
			}
		}
		
		return strPwd.toString();
	}
	
	public static String getDateToString(String format) {
		Date date = new Date();
		SimpleDateFormat simpleDate = new SimpleDateFormat(format);
		return simpleDate.format(date);
	}
	
	/**
	 * 문자열 중 끝문자 기준 특정 문자로 변환처리
	 * 
	 * =========================================
	 * blindValue("take0415@eluocnc.com", 7);
	 * -----------------------------------------
	 * take0415@eluocnc.com
	 * t*******@eluocnc.com
	 * =========================================
	 * blindValue("fa@ke0415@eluoc@nc.com", 1);
	 * -----------------------------------------
	 * fa@ke0415@eluoc@nc.com
	 * f*@ke041*@eluo*@nc.com
	 * =========================================
	 * blindValue("hahahahahahaha415", 5);
	 * -----------------------------------------
	 * hahahahahahaha415
	 * hahahahahaha*****
	 * =========================================
	 * 
	 * @param strValue
	 * @param strSeparator
	 * @param strBlindValue
	 * @param nBlindLength
	 * @return
	 */
	public static String BLINDVALUE_SPLIT = null;
	public static String BLINDVALUE_REPLACE = "*";
	public static int BLINDVALUE_SIZE = 2;
	
	public static String blindValue(String strValue) {
		return blindValue(strValue, BLINDVALUE_SPLIT, BLINDVALUE_REPLACE, BLINDVALUE_SIZE);
	}
	
	public static String blindValue(String strValue, String strSplit) {
		return blindValue(strValue, strSplit, BLINDVALUE_REPLACE, BLINDVALUE_SIZE);
	}
	
	public static String blindValue(String strValue, int nSize) {
		return blindValue(strValue, BLINDVALUE_SPLIT, BLINDVALUE_REPLACE, nSize);
	}
	
	public static String blindValue(String strValue, String strSplit, String strReplace) {
		return blindValue(strValue, strSplit, strReplace, BLINDVALUE_SIZE);
	}
	
	public static String blindValue(String strValue, String strSplit, int nSize) {
		return blindValue(strValue, strSplit, BLINDVALUE_REPLACE, nSize);
	}
	
	public static String blindValue(String strValue, String strSplit, String strReplace, int nSize) {
		strValue = StringUtils.trimToEmpty(strValue);
		
		if (StringUtils.isBlank(strValue)) {
			return strValue;
		}
		
		if (strSplit != null) {
			String[] values = strValue.split(strSplit);
			
			if (values.length > 1) {
				for (int i = 0, max = values.length - 1; i < max; i++) {
					values[i] = blindValue2(values[i], strReplace, nSize);
				}
				strValue = StringUtils.join(values, strSplit);
			} else {
				strValue = blindValue2(strValue, strReplace, nSize);
			}
		} else {
			strValue = blindValue2(strValue, strReplace, nSize);
		}
		
		return strValue;
	}
	
	public static String blindValue2(String strValue, String strSplit, int nSize) {
		strValue = StringUtils.trimToEmpty(strValue);
		strSplit = StringUtils.trimToEmpty(strSplit);
		
		if (StringUtils.isBlank(strValue) || StringUtils.isBlank(strSplit) || nSize < 1 || strValue.length() < nSize + 1) {
			return strValue;
		}
		
		String strBlindValues = "";
		
		for (int i = 0, max = nSize; i < max; i++) {
			strBlindValues += strSplit;
		}
		
		strValue = strValue.substring(0, strValue.length() - nSize) + strBlindValues;
		return strValue;
	}
	
	/**
	 * 임시 비밀번호 발급
	 * 
	 * @return
	 */
	public static String temporaryPassword() {
		return temporaryPassword(10);
	}
	
	/**
	 * 임시 비밀번호 발급
	 * 
	 * @param i
	 * @return
	 */
	public static String temporaryPassword(int size) {
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();
		
		String chars[] = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,1,2,3,4,5,6,7,8,9".split(",");
		
		for (int i = 0; i < size; i++) {
			buffer.append(chars[random.nextInt(chars.length)]);
		}
		return buffer.toString();
	}
	
	/**
	 * List 내 key 검사
	 * 
	 * @param list
	 * @param compare
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static boolean containsString(List list, String compare) {
		for (int i = 0; i < list.size(); i++) {
			String str = (String) list.get(i);
			if (compare.indexOf(str) == 0)
				return true;
		}
		return false;
	}
	
	public static int containsString(String[] list, String compare) throws Exception {
		if (StringUtils.isBlank(compare)) {
			return -1;
		}
		for (int i = 0; i < list.length; i++) {
			if (compare.equals(list[i]))
				return i;
		}
		return -1;
	}
	
	/**
	 * 파라미터 변경
	 * 
	 * @param source
	 * @param oldPart
	 * @param newPart
	 * @return
	 */
	public static String replaceParameter(String source, String oldPart, String newPart) {
		if (source == null)
			return "";
		
		if (oldPart == null || newPart == null)
			return source;
		
		StringBuffer stringbuffer = new StringBuffer();
		String lowerSource = source.toLowerCase();
		
		int last = 0;
		while (true) {
			int start = lowerSource.indexOf(oldPart, last);
			if (start >= 0) {
				stringbuffer.append(source.substring(last, start));
				stringbuffer.append(newPart);
				last = start + oldPart.length();
			} else {
				stringbuffer.append(source.substring(last));
				return stringbuffer.toString();
			}
		}
	}
	
	/**
	 * 날짜 계산 월 M 1은 한달후 -1은 한달전
	 * 
	 * @param m
	 *            은 월
	 * @return
	 */
	public static String getMonthAgoDate(int m) throws Exception {
		Calendar cal = Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST"));
		cal.add(Calendar.MONTH, m); // 한달전 날짜 가져오기
		java.util.Date monthago = cal.getTime();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
		return formatter.format(monthago);
	}
	
	/**
	 * 날짜 계산 일 D 1은 하루후 -1은 하루전
	 * 
	 * @param d
	 *            는 날짜
	 * @return
	 */
	public static String getDayAgoDate(int d) throws Exception {
		Calendar cal = Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST"));
		cal.add(Calendar.DATE, d);
		java.util.Date weekago = cal.getTime();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
		return formatter.format(weekago);
	}
	
	/**
	 * 우편번호를 통해 지역코드를 가져옴
	 * 
	 * @param zipcode
	 *            (999-999)
	 * @return 지역코드
	 * @throws Exception
	 */
	public static String getLocaleCode(String zipcode) throws Exception {
		String area_cd = null;
		String zip = null;
		int zip1 = 0;
		
		try {
			zip = zipcode.split("-")[0];
			if (StringUtils.isNumeric(zip) && !"".equals(zip)) {
				zip1 = Integer.parseInt(zip);
			}
			
			if (zip1 >= 100 && zip1 <= 199)
				area_cd = "ZE001"; // 서울
			else if (zip1 >= 200 && zip1 <= 299)
				area_cd = "ZE002"; // 강원
			else if (zip1 >= 300 && zip1 <= 309)
				area_cd = "ZE003"; // 대전
			else if (zip1 >= 310 && zip1 <= 359)
				area_cd = "ZE004"; // 충남
			else if (zip1 >= 360 && zip1 <= 399)
				area_cd = "ZE005"; // 충북
			else if (zip1 >= 400 && zip1 <= 409)
				area_cd = "ZE006"; // 인천
			else if (zip1 >= 410 && zip1 <= 499)
				area_cd = "ZE007"; // 경기
			else if (zip1 >= 500 && zip1 <= 509)
				area_cd = "ZE008"; // 광주
			else if (zip1 >= 510 && zip1 <= 559)
				area_cd = "ZE009"; // 전남
			else if (zip1 >= 560 && zip1 <= 599)
				area_cd = "ZE010"; // 전북
			else if (zip1 >= 600 && zip1 <= 619)
				area_cd = "ZE011"; // 부산
			else if (zip1 >= 620 && zip1 <= 679)
				area_cd = "ZE012"; // 경남
			else if (zip1 >= 680 && zip1 <= 689)
				area_cd = "ZE013"; // 울산
			else if (zip1 >= 690 && zip1 <= 699)
				area_cd = "ZE014"; // 제주
			else if (zip1 >= 700 && zip1 <= 711)
				area_cd = "ZE015"; // 대구
			else if (zip1 >= 712 && zip1 <= 799)
				area_cd = "ZE016"; // 경북
			else
				area_cd = "ZE017"; // 기타
		} catch (Exception e) {
			area_cd = "ZE017";
		}
		return area_cd;
	}
	
	public static String Han_UnicodeNumberToString(int[] s) throws IllegalArgumentException {
		if (s.length != 3)
			throw new IllegalArgumentException();
		s[0] -= 0x1100;
		s[1] -= 0x1161;
		s[2] -= 0x11a8;
		char c = (char) ((((s[0] * 588) + s[1] * 28) + s[2]) + 44032);
		return String.valueOf(c);
	}
	
	public static int[] Han_CharacterToIMFUnicode(char s) {
		int[] result = new int[3];
		int a = s - 44032;
		result[0] = 0x1100 + ((a / 28) / 21);
		result[1] = 0x1161 + ((a / 21) % 21);
		result[2] = 0x11a8 + (a % 28);
		return result;
	}
	
	public static String getChosung(String str) {
		if (str.length() == 0)
			return str;
		
		char cho = str.charAt(0);
		boolean resultPattern = Pattern.matches("[a-zA-Z0-9]+", cho + "");
		if (resultPattern) {
			return cho + "";
		} else {
			if (cho >= 0xAC00) {
				char uniVal = (char) (cho - 0xAC00);
				return ((char) ((((uniVal - (uniVal % 28)) / 28) / 21) + 0x1100)) + "";
			} else {
				return cho + "";
			}
		}
	}
	
	/**
	 * 이미지 src 경로 로컬 서버로 교체
	 * 
	 * @param content
	 * @return
	 * @throws Exception
	 */
	public static String imgSrcChange(String content) throws Exception {
		Pattern pattern = Pattern.compile("<[img|IMG][^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");

		Matcher matcher = pattern.matcher(content);

		while (matcher.find()) {
			if ((0 < matcher.group(1).toLowerCase().indexOf("naver"))) {
				content = content.replace(matcher.group(1), naver(matcher.group(1)));
			}
		}

		return content;
	}
	
	public static String naver(String path) throws Exception {
		
		UrlImageUtil ui = new UrlImageUtil();
		
		String newFilename = System.currentTimeMillis() + String.valueOf((int) (Math.random() * 10000));
		String newPath = (String) EgovFileMngUtil.getTimeStamp().subSequence(0, 6);
		
		File cFile = new File(EgovProperties.getProperty("IMG.NAVER") + newPath);
		
		if (!cFile.isDirectory()) {
			cFile.mkdirs();
		}
		
		ui.imageUrl = new URL(path);
		
		String ext = ui.getImageName();
		
		if (StringUtils.isNotBlank(ext)) {
			if (ext.lastIndexOf(".") > -1) {
				ext = ext.substring(ext.lastIndexOf("."));
			}
		}
		
		newFilename = newFilename + ext;
		ui.getImageSize(EgovProperties.getProperty("IMG.NAVER") + newPath + "/" + newFilename);
		
		logger.info(">>>>> StringUtil.naver() : " + EgovProperties.getProperty("IMG.NAVER") + newPath + "/" + newFilename);
		logger.info(">>>>> StringUtil.naver() : " + EgovProperties.getProperty("IMG.EDITORURL.NAVER") + newPath + "/" + newFilename);
		
		return EgovProperties.getProperty("IMG.EDITORURL.NAVER") + newPath + "/" + newFilename;
	}
	
	/**
	 * 현재URL리턴
	 * 2012. 12. 12.
	 * 
	 * @param request
	 * @return
	 */
	public static String getURL(HttpServletRequest request) {
		Enumeration<?> param = request.getParameterNames();
		
		StringBuffer strParam = new StringBuffer();
		StringBuffer strURL = new StringBuffer();
		
		if (param.hasMoreElements()) {
			strParam.append("?");
		}
		
		while (param.hasMoreElements()) {
			String name = (String) param.nextElement();
			String value = request.getParameter(name);
			
			strParam.append(name + "=" + value);
			
			if (param.hasMoreElements()) {
				strParam.append("&");
			}
		}
		
		strURL.append(request.getRequestURI());
		strURL.append(strParam);
		
		return strURL.toString();
	}
	
	/**
	 * 외부계정리스트
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<SelectBean> etcAdminList() throws Exception {
		SelectBean bean = null;
		ArrayList<SelectBean> list = new ArrayList<SelectBean>();
		// 롯데카드,
		String[] code = { "lottecard", "magazine" };
		String[] name = { "롯데카드", "magazine" };
		String[] pwd = { "fhtepzkem", "magazine" };
		for (int i = 0; i < code.length; i++) {
			bean = new SelectBean();
			bean.setCode(code[i]);
			bean.setName(name[i]);
			bean.setVal(pwd[i]);
			
			list.add(bean);
		}
		return list;
	}
	
	/**
	 * 패턴 제거
	 * - 숫자 제거 : removeRegex("[0-9]", tmp);
	 * - 영문 제거 : removeRegex("[a-zA-Z]", tmp);
	 * 
	 * @param 제거할패턴
	 * @param 대상문자열
	 * @return 패턴 제거 된 문자열
	 */
	public static String removeRegex(String regex, String value) {
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher("");
		
		m.reset(value);
		value = m.replaceAll("");
		
		return value;
	}
	
	public static String getParam(CommonSearchVO vo) {
		if (vo == null)
			return "";
		
		String param = "?";
		param += "pageIndex=" + vo.getPageIndex();
		param += "&pageUnit=" + vo.getPageUnit();
		if (!vo.getOrd().equals(""))
			param += "&ord=" + vo.getOrd();
		if (!vo.getGb().equals(""))
			param += "&gb=" + vo.getGb();
		if (!vo.getGb1().equals(""))
			param += "&gb1=" + vo.getGb1();
		if (!vo.getGb2().equals(""))
			param += "&gb2=" + vo.getGb2();
		if (!vo.getSearchKey().equals(""))
			param += "&searchKey=" + vo.getSearchKey();
		if (!vo.getSearchKeyword().equals(""))
			param += "&searchKeyword=" + vo.getSearchKeyword();
		if (!vo.getSdt().equals(""))
			param += "&sdt=" + vo.getSdt();
		if (!vo.getEdt().equals(""))
			param += "&edt=" + vo.getEdt();
		if (!vo.getSdt1().equals(""))
			param += "&sdt1=" + vo.getSdt1();
		if (!vo.getEdt1().equals(""))
			param += "&edt1=" + vo.getEdt1();
		if (!vo.getVal1().equals(""))
			param += "&val1=" + vo.getVal1();
		if (!vo.getVal2().equals(""))
			param += "&val2=" + vo.getVal2();
		if (!vo.getVal3().equals(""))
			param += "&val3=" + vo.getVal3();
		if (!vo.getVal4().equals(""))
			param += "&val4=" + vo.getVal4();
		if (!vo.getVal5().equals(""))
			param += "&val5=" + vo.getVal5();
		if (!vo.getVal6().equals(""))
			param += "&val6=" + vo.getVal6();
		if (!vo.getVal7().equals(""))
			param += "&val7=" + vo.getVal7();
		if (!vo.getVal8().equals(""))
			param += "&val8=" + vo.getVal8();
		if (!vo.getVal9().equals(""))
			param += "&val9=" + vo.getVal9();
		if (!vo.getVal10().equals(""))
			param += "&val10=" + vo.getVal10();
		if (!vo.getState().equals(""))
			param += "&state=" + vo.getState();
		if (!vo.getOpen_yn().equals(""))
			param += "&open_yn=" + vo.getOpen_yn();
		return param;
	}
	
}