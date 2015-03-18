package egovframework.common.util;

/*
 * 하기 프로그램에 대한 저작권을 포함한 지적재산권은 베페에 있으며,
 * 베페가 명시적으로 허용하지 않는 사용, 복사, 변경 및 제 3자에 의한 공개, 배포는 엄격히 금지되며
 * 베페의 지적재산권 침해에 해당된다.
 * Copyright (C) 2012 BeFe All Rights Reserved.
 * 
 * YOU ARE STRICTLY PROHIBITED TO COPY, DISCLOSE, DISTRIBUTE, MODIFY OR USE THIS PROGRAM
 * IN PART OR AS A WHOLE WITHOUT THE PRIOR WRITTEN CONSENT OF BEFE.
 * BEFE OWNS THE INTELLECTUAL PROPERTY RIGHTS IN AND TO THIS PROGRAM.
 * COPYRIGHT (C) 2012 BEFE ALL RIGHTS RESERVED.
 * 
 * Project	    : 베페 웹사이트 개편
 * Program      : www.befe.co.kr
 * Description	: 베페 웹사이트
 * Environment	: Unix , Apache2.2.x, Tomcat 6.x, Oracle 11g, ...
 * Notes	    : Developed by eluocnc.com
 * 
 * @(#) DateUtil.java
 * @since 2012. 12. 20.	
 * History	    : [DATE][Programmer][Description]
 * 		        : [2012. 12. 20.][take0415@eluocnc.com][CREATE: STATEMENT]
 */

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * DateUtil Description
 * 
 * @author take0415@eluocnc.com
 * @since 2012. 12. 20.
 * @version 1.0
 */
public class DateUtil {

	/**
	 * yyyyMMdd가 오늘 기준으로 (오늘-7일) ~ (오늘+7일) 에 포함되는지 확인
	 * 
	 * @param yyyyMMdd
	 *            (yyyy-MM-dd, yyyyMMdd, MM-dd, MMdd)
	 * @param before
	 * @param after
	 * @return
	 * @throws Exception
	 */
	public static boolean isTermMMDD(String yyyyMMdd, int before, int after) throws Exception {
		if (yyyyMMdd == null) {
			return false;
		}

		yyyyMMdd = yyyyMMdd.replaceAll("-", "");

		if (yyyyMMdd.length() != 8 && yyyyMMdd.length() != 4) {
			return false;
		}

		if (yyyyMMdd.length() == 8) {
			yyyyMMdd = yyyyMMdd.substring(4);
		}

		return isTerm(yyyyMMdd, before, after);
	}

	/**
	 * yyyyMMdd가 오늘 기준으로 (오늘-7일) ~ (오늘+7일) 에 포함되는지 확인
	 * 
	 * @param yyyyMMdd
	 *            (yyyy-MM-dd, yyyyMMdd, MM-dd, MMdd)
	 * @param before
	 * @param after
	 * @return
	 * @throws Exception
	 */
	public static boolean isTerm(String yyyyMMdd, int before, int after) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		// date 형식은 무조건 "yyyy-MM-dd", "yyyyMMdd", "MM-dd", "MMdd"
		/*
		 * if (before == 0) {
		 * before = 7;
		 * }
		 * if (after == 0) {
		 * after = 7;
		 * }
		 * 
		 * before = Math.abs(before) * -1;
		 * after = Math.abs(after);
		 * 
		 * System.out.println("before : " + before);
		 * System.out.println("after : " + after);
		 */
		if (yyyyMMdd == null) {
			return false;
		}

		yyyyMMdd = yyyyMMdd.replaceAll("-", "");

		if (yyyyMMdd.length() != 8 && yyyyMMdd.length() != 4) {
			return false;
		}

		// 비교일
		Calendar calNow = Calendar.getInstance();

		int yyyy = 0;
		int mm = 0;
		int dd = 0;

		if (yyyyMMdd.length() == 8) {
			yyyy = Integer.parseInt(yyyyMMdd.substring(0, 4));
			mm = Integer.parseInt(yyyyMMdd.substring(4, 6)) - 1;
			dd = Integer.parseInt(yyyyMMdd.substring(6, 8));
			calNow.set(yyyy, mm, dd);
		} else if (yyyyMMdd.length() == 4) {
			mm = Integer.parseInt(yyyyMMdd.substring(0, 2)) - 1;
			dd = Integer.parseInt(yyyyMMdd.substring(2, 4));

			calNow.set(Calendar.MONTH, mm);
			calNow.set(Calendar.DAY_OF_MONTH, dd);

		} else {
			return false;
		}

		// 오늘 날짜 기준 몇일 전
		Calendar calBefore = Calendar.getInstance();
		calBefore.add(Calendar.DAY_OF_MONTH, before);

		// 오늘 날짜 기준 몇일 뒤
		Calendar calAfter = Calendar.getInstance();
		calAfter.add(Calendar.DAY_OF_MONTH, after);

		calNow.set(Calendar.HOUR_OF_DAY, 0);
		calNow.set(Calendar.MINUTE, 0);
		calNow.set(Calendar.SECOND, 0);
		calNow.set(Calendar.MILLISECOND, 0);
		calBefore.set(Calendar.HOUR_OF_DAY, 0);
		calBefore.set(Calendar.MINUTE, 0);
		calBefore.set(Calendar.SECOND, 0);
		calBefore.set(Calendar.MILLISECOND, 0);
		calAfter.set(Calendar.HOUR_OF_DAY, 0);
		calAfter.set(Calendar.MINUTE, 0);
		calAfter.set(Calendar.SECOND, 0);
		calAfter.set(Calendar.MILLISECOND, 0);

		// System.out.println("비교 : " + sdf.format(calNow.getTime()));
		// System.out.println("전일 : " + sdf.format(calBefore.getTime()));
		// System.out.println("후일 : " + sdf.format(calAfter.getTime()));

		if ((calNow.equals(calBefore) || calNow.after(calBefore)) && (calNow.equals(calAfter) || calNow.before(calAfter))) {
			// System.out.println(">>> 유효기간");
			return true;
		}

		// System.out.println(">>> 비유효기간");
		return false;
	}

	/**
	 * 오늘 날짜가 yyyyMMdd 기준으로 (yyyyMMdd-7일) ~ (yyyyMMdd+7일) 에 포함되는지 확인
	 * 
	 * @param yyyyMMdd
	 * @param before
	 * @param after
	 * @return
	 * @throws Exception
	 */
	public static boolean isTodayMMDD(String yyyyMMdd, int before, int after) throws Exception {
		if (yyyyMMdd == null) {
			return false;
		}

		yyyyMMdd = yyyyMMdd.replaceAll("-", "");

		if (yyyyMMdd.length() != 8 && yyyyMMdd.length() != 4) {
			return false;
		}

		if (yyyyMMdd.length() == 8) {
			yyyyMMdd = yyyyMMdd.substring(4);
		}

		return isToday(yyyyMMdd, before, after);
	}

	/**
	 * 오늘 날짜가 yyyyMMdd 기준으로 (yyyyMMdd-7일) ~ (yyyyMMdd+7일) 에 포함되는지 확인
	 * 
	 * @param yyyyMMdd
	 * @param before
	 * @param after
	 * @return
	 * @throws Exception
	 */
	public static boolean isToday(String yyyyMMdd, int before, int after) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		// date 형식은 무조건 "yyyy-MM-dd", "yyyyMMdd", "MM-dd", "MMdd"
		/*
		 * if (before == 0) {
		 * before = 7;
		 * }
		 * if (after == 0) {
		 * after = 7;
		 * }
		 * 
		 * before = Math.abs(before) * -1;
		 * after = Math.abs(after);
		 * 
		 * System.out.println("before : " + before);
		 * System.out.println("after : " + after);
		 */
		if (yyyyMMdd == null) {
			return false;
		}

		yyyyMMdd = yyyyMMdd.replaceAll("-", "");

		if (yyyyMMdd.length() != 8 && yyyyMMdd.length() != 4) {
			return false;
		}

		// 오늘
		Calendar calNow = Calendar.getInstance();

		// yyyyMMdd 기준 몇일 전
		Calendar calBefore = Calendar.getInstance();

		// yyyyMMdd 기준 몇일 뒤
		Calendar calAfter = Calendar.getInstance();

		int yyyy = 0;
		int mm = 0;
		int dd = 0;

		if (yyyyMMdd.length() == 8) {
			yyyy = Integer.parseInt(yyyyMMdd.substring(0, 4));
			mm = Integer.parseInt(yyyyMMdd.substring(4, 6)) - 1;
			dd = Integer.parseInt(yyyyMMdd.substring(6, 8));

			calBefore.set(yyyy, mm, dd);
			calAfter.set(yyyy, mm, dd);

		} else if (yyyyMMdd.length() == 4) {
			mm = Integer.parseInt(yyyyMMdd.substring(0, 2)) - 1;
			dd = Integer.parseInt(yyyyMMdd.substring(2, 4));

			calBefore.set(Calendar.MONTH, mm);
			calBefore.set(Calendar.DAY_OF_MONTH, dd);

			calAfter.set(Calendar.MONTH, mm);
			calAfter.set(Calendar.DAY_OF_MONTH, dd);

		} else {
			return false;
		}

		calBefore.add(Calendar.DAY_OF_MONTH, before);
		calAfter.add(Calendar.DAY_OF_MONTH, after);

		calNow.set(Calendar.HOUR_OF_DAY, 0);
		calNow.set(Calendar.MINUTE, 0);
		calNow.set(Calendar.SECOND, 0);
		calNow.set(Calendar.MILLISECOND, 0);
		calBefore.set(Calendar.HOUR_OF_DAY, 0);
		calBefore.set(Calendar.MINUTE, 0);
		calBefore.set(Calendar.SECOND, 0);
		calBefore.set(Calendar.MILLISECOND, 0);
		calAfter.set(Calendar.HOUR_OF_DAY, 0);
		calAfter.set(Calendar.MINUTE, 0);
		calAfter.set(Calendar.SECOND, 0);
		calAfter.set(Calendar.MILLISECOND, 0);

		// System.out.println("yyyyMMdd : " + yyyyMMdd + " / 오늘 : " + sdf.format(calNow.getTime()));
		// System.out.println("yyyyMMdd - " + before + "일 : " + sdf.format(calBefore.getTime()));
		// System.out.println("yyyyMMdd + " + after + "일 : " + sdf.format(calAfter.getTime()));

		if ((calNow.equals(calBefore) || calNow.after(calBefore)) && (calNow.equals(calAfter) || calNow.before(calAfter))) {
			// System.out.println(">>> 유효기간");
			return true;
		}

		// System.out.println(">>> 비유효기간");
		return false;
	}

	// 문자열 날짜 비교
	public static boolean diffOfDate(String begin, String end) throws Exception {
		try {

			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date thisdate = formatter.parse(formatter.format(new Date()));

			Date beginDate = formatter.parse(begin);
			Date endDate = formatter.parse(end);

			if ((thisdate.equals(beginDate) || thisdate.after(beginDate)) && (thisdate.equals(endDate) || thisdate.before(endDate))) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 입력한 날 기준 으로 d 만큼 전일 혹은 후일 리턴 (yyyyMMdd가 NULL 인 경우는 오늘 기준으로 계산)
	 * 
	 * @param yyyyMMdd
	 * @param d
	 * @return
	 * @throws Exception
	 */
	public static Date getDateTargetMMDD(String yyyyMMdd, int d) throws Exception {
		if (yyyyMMdd != null) {
			yyyyMMdd = yyyyMMdd.replaceAll("-", "");

			if (yyyyMMdd.length() == 8) {
				yyyyMMdd = yyyyMMdd.substring(4);
			}
		}

		String result = getStrTarget(yyyyMMdd, d);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		return sdf.parse(result);
	}

	/**
	 * 입력한 날 기준 으로 d 만큼 전일 혹은 후일 리턴 (yyyyMMdd가 NULL 인 경우는 오늘 기준으로 계산)
	 * 
	 * @param yyyyMMdd
	 * @param d
	 * @return
	 * @throws Exception
	 */
	public static Date getDateTarget(String yyyyMMdd, int d) throws Exception {
		String result = getStrTarget(yyyyMMdd, d);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		return sdf.parse(result);
	}

	/**
	 * 입력한 날 기준 으로 d 만큼 전일 혹은 후일 리턴 (yyyyMMdd가 NULL 인 경우는 오늘 기준으로 계산)
	 * 
	 * @param yyyyMMdd
	 * @param d
	 * @return
	 * @throws Exception
	 */
	public static String getStrTargetMMDD(String yyyyMMdd, int d) throws Exception {
		if (yyyyMMdd != null) {
			yyyyMMdd = yyyyMMdd.replaceAll("-", "");

			if (yyyyMMdd.length() == 8) {
				yyyyMMdd = yyyyMMdd.substring(4);
			}
		}

		return getStrTarget(yyyyMMdd, d);
	}

	/**
	 * 입력한 날 기준 으로 d 만큼 전일 혹은 후일 리턴 (yyyyMMdd가 NULL 인 경우는 오늘 기준으로 계산)
	 * 
	 * @param yyyyMMdd
	 * @param d
	 * @return
	 * @throws Exception
	 */
	public static String getStrTarget(String yyyyMMdd, int d) throws Exception {

		// date 형식은 무조건 "yyyy-MM-dd", "yyyyMMdd", "MM-dd", "MMdd"
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		// yyyyMMdd 기준 몇일 전
		Calendar calTarget = Calendar.getInstance();

		int yyyy = 0;
		int mm = 0;
		int dd = 0;

		if (yyyyMMdd != null) {
			yyyyMMdd = yyyyMMdd.replaceAll("-", "");

			if (yyyyMMdd.length() == 8) {
				yyyy = Integer.parseInt(yyyyMMdd.substring(0, 4));
				mm = Integer.parseInt(yyyyMMdd.substring(4, 6)) - 1;
				dd = Integer.parseInt(yyyyMMdd.substring(6, 8));

				calTarget.set(yyyy, mm, dd);

			} else if (yyyyMMdd.length() == 4) {
				mm = Integer.parseInt(yyyyMMdd.substring(0, 2)) - 1;
				dd = Integer.parseInt(yyyyMMdd.substring(2, 4));

				calTarget.set(Calendar.MONTH, mm);
				calTarget.set(Calendar.DAY_OF_MONTH, dd);
			}
		}

		calTarget.add(Calendar.DAY_OF_MONTH, d);

		return sdf.format(calTarget.getTime());
	}

	/**
	 * date string 으로 변환
	 * 
	 * @param d
	 * @param sSdf
	 * @return
	 * @throws Exception
	 */
	public static String toString(Date d, String sSdf) throws Exception {
		if (d == null) {
			d = new Date();
		}

		if (sSdf == null) {
			sSdf = "yyyy-MM-dd HH:mm:ss";
		}

		SimpleDateFormat sdf = new SimpleDateFormat(sSdf);

		return sdf.format(d);
	}

	/**
	 * 날짜
	 * 
	 * @param day
	 * @return
	 * @throws Exception
	 */
	public static String getDate(int day) throws Exception {
		Calendar cal = Calendar.getInstance();

		if (day != 0) {
			cal.add(Calendar.DATE, day);
		}

		String s = "";
		s += cal.get(Calendar.YEAR);
		s += "-";
		s += (cal.get(Calendar.MONTH) + 1 < 10 ? "0" : "");
		s += (cal.get(Calendar.MONTH) + 1);
		s += "-";
		s += (cal.get(Calendar.DAY_OF_MONTH) < 10 ? "0" : "");
		s += cal.get(Calendar.DAY_OF_MONTH);

		return s;
	}

	/**
	 * 요일
	 * 
	 * @param day
	 * @return
	 * @throws Exception
	 */
	public static String getWeek(int day) throws Exception {
		final String[] week = { "일", "월", "화", "수", "목", "금", "토" };
		Calendar cal = Calendar.getInstance();

		if (day != 0) {
			cal.add(Calendar.DATE, day);
		}

		return week[cal.get(Calendar.DAY_OF_WEEK) - 1];
	}
}