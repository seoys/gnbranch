<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>굿네이버스 지부사이트 사용자화면</title>
	<style type="text/css">
/*기본태그 정의*/
html, body {height:100%; padding:0;}
body {font-size:10pt; font-family:돋움, Dotum; color:#999;}
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, p, blockquote, th, td {margin : 0; padding : 0;}
h1,h2,h3,h4,h5,h6 {font-size :1em;}
ol,ul,li {list-style:none; font-size:1em; font-family:돋움, Dotum; color:#666;}
table {border-collapse:collapse; border-spacing:0px;width:100%;color:#333; table-layout:fixed;}
td {color:#999; font-size:1em ; font-family:돋움, Dotum; word-break:break-all; word-wrap:break-word;}
caption {text-align : left;}
a {color:#333; text-decoration:none;}
a:active,a:visited,a:hover	{color:#333; text-decoration:none;}
.skip {display:none;}
.new {color: orangered;font-family: verdana;font-size: 11px;}
/* LAYOUT CSS */
h1 {padding:20px}
#tableWrap {padding:10px;padding-top:0px}
#tableWrap #content .html-list {font-size:1em;}
#tableWrap #content .html-list thead th {height:18px; font-family:Tahoma;padding:5px; font-size:0.85em; text-align:center; font-weight:bold; color:#333; border:#666 3px solid;}
#tableWrap #content .html-list tbody th {height:22px;border-top:none; border-bottom:1px solid #999; padding:3px 0 0 10px;text-align:left;}
#tableWrap #content .html-list td {height:22px;border-bottom:1px solid #999; border-right:1px solid #999; padding:3px 0 0 10px;}
#tableWrap #content .html-list td:last-child {border-right:none;}
#tableWrap #content .html-list td.end.red {font-weight:bold;color:tomato;}
#tableWrap #content .html-list td.done{padding-left:0;padding-right:0;text-align:center;background:#eef5d9;}
span.date {display:none;}
	</style>
</head>

<body>
<h1 class="title">굿네이버스 지부사이트 사용자페이지 퍼블리싱 리스트 <a href="/mgr/pubList.jsp" class="fr" target="_blank">관리자 화면리스트 보기</a></h1>
<!-- tableWrap -->
<div id="tableWrap">
	<div id="content">
		
		<div class="html-list">
			<table width="100%" cellspacing="0">
				<colgroup>
					<col width="12%"/>
					<col width="12%"/>
					<col width="12%"/>
					<col width="3%"/>
					<col width="32%"/>
					<col width="17%"/>
				</colgroup>
				<thead>
					<tr>
						<th colspan="4">Page title</th>
						<th>Html File</th>
						<th class="end">비 고</th>
					</tr>
				</thead>
				<tbody>
					<tr><td colspan="6" style="height:1px; background:#fff;" class="end"></td></tr>
					<tr>
						<td rowspan="5">메인</td>
						<td>시도본부 / 복지관 / 해외지부</td>
						<td></td>
						<td class="done">○</td>
						<td class=""><a target="_blank" href="/front/typeA.jsp">/front/typeA.jsp</a></td>
						<td class="end"></td>
					</tr>
					<tr>
						<td>좋은마음센터</td><td></td>
						<td class="done">○</td>
						<td class=""><a target="_blank" href="/front/typeB.jsp">/front/typeB.jsp</a></td>
						<td class="end"></td>
					</tr>
					<tr>
						<td>아동권리지원센터</td><td></td>
						<td class="done">○</td>
						<td class=""><a target="_blank" href="/front/typeC.jsp">/front/typeC.jsp</a></td>
						<td class="end"></td>
					</tr>
					<tr>
						<td>아동보호전문기관_ 법인</td><td></td>
						<td class="done">○</td>
						<td class=""><a target="_blank" href="/front/typeD.jsp">/front/typeD.jsp</a></td>
						<td class="end"></td>
					</tr>
					<tr>
						<td>아동보호전문기관_ 위탁</td><td></td>
						<td class="done">○</td>
						<td class=""><a target="_blank" href="/front/typeE.jsp">/front/typeE.jsp</a></td>
						<td class="end"></td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr>
						<td>사용자 템플릿</td>
                        <td>인사말</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/intro.jsp">/front/intro.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td>지부소개</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/info.jsp">/front/info.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td>연혁</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/history.jsp">/front/history.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td>찾아오시는 길</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/map.jsp">/front/map.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td>일반게시판</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/board_list.jsp">/front/board_list.jsp</a></td>
						<td class="">"사용기간"있는 경우 포함</td>
					</tr>
					<tr>
						<td></td>
                        <td></td>
                        <td>상세</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/board_view.jsp">/front/board_view.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td></td>
                        <td>등록</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/board_write.jsp">/front/board_write.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td>썸네일형게시판</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/board_thum.jsp">/front/board_thum.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td>갤러리형게시판</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/board_gallery.jsp">/front/board_gallery.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td>자원봉사모집</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/volunteer_list.jsp">/front/volunteer_list.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td></td>
                        <td></td>
                        <td>상세</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/volunteer_view.jsp">/front/volunteer_view.jsp</a></td>
						<td class="">신청하기 레이어팝업(에디터) 포함</td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr>
						<td rowspan="2">고정내용</td>
                        <td>후원안내</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/support.jsp">/front/support.jsp</a></td>
						<td class="">고정컨텐츠 페이지</td>
					</tr>
					<tr>
                        <td>소식지</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/front/newsletter.jsp">/front/newsletter.jsp</a></td>
						<td class="">고정컨텐츠 페이지</td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr>
						<td></td>
                        <td>교육신청</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="" href="">내용위치 /front/include/inc_footer.jsp</a></td>
						<td class="">레이어팝업</td>
					</tr>
					<tr>
						<td></td>
                        <td>온라인문의</td>
                        <td></td>
                        <td class="done">○</td>
						<td class=""><a target="" href="">내용위치 /front/include/inc_footer.jsp</a></td>
						<td class="">레이어팝업(에디터)</td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
				</tbody>
			</table>
		</div>

	</div>
</div>
<!-- //tableWrap -->
</body>
</html>
