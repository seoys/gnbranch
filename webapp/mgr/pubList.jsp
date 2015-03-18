<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>굿네이버스</title>
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
<h1 class="title">굿네이버스 지부사이트 관리자페이지 퍼블리싱 리스트 <a href="/front/pubList.jsp" class="fr" target="_blank">사용자 화면리스트 보기</a></h1>
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
						<td colspan="3">UI GUIDE</td>
						<td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/temp.jsp">/mgr/temp.jsp</a></td>
						<td class="end"></td>
					</tr>
					<tr>
						<td colspan="3">로그인</td>
						<td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/login/login.jsp">/mgr/login/login.jsp</a></td>
						<td class="end"></td>
					</tr>
					<tr>
						<td colspan="3">비밀번호변경</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/login/password.jsp">/mgr/login/password.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr>
						<td rowspan="3">지부 마스터</td>
                        <td colspan="2">관리자 그룹 관리</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/master/adminGroup.jsp">/mgr/master/adminGroup.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
                        <td rowspan="2">지부관리자 계정 관리</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/master/adminAccount.jsp">/mgr/master/adminAccount.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
                        <td>등록</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/master/adminAccount_add.jsp">/mgr/master/adminAccount_add.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
                    <tr>
						<td rowspan="5">지부 메인 관리</td>
                        <td rowspan="2">메인 배너</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/main/bannerMain.jsp">/mgr/main/bannerMain.jsp</a></td>
						<td class="" rowspan="2">마스터 / 지부 (주석구분)</td>
					</tr>
					<tr>
                        <td>등록</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/main/bannerMain_add.jsp">/mgr/main/bannerMain_add.jsp</a></td>
					</tr>
					<tr>
                        <td rowspan="2">패밀리 배너</td>
                        <td>리스트</td>
                        <td></td>
						<td></td>
						<td class="end">메인배너와 동일 포맷</td>
					</tr>
					<tr>
                        <td>등록</td>
                        <td></td>
						<td></td>
						<td class="end">메인배너와 동일 포맷</td>
					</tr>
					<tr>
                        <td colspan="2">메인 컨텐츠 설정</td>
                        <td></td>
						<td class=""><a target="_blank" href="/mgr/main/branchMain.jsp">/mgr/main/branchMain.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
                    <tr>
                        <td colspan="3">메뉴생성</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/branchMenu.jsp">/mgr/menu/branchMenu.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr>
						<td rowspan="8">지부 메뉴 설정</td>
                        <td rowspan="6">메뉴별 컨텐츠 생성</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/htmlAdmin_list.jsp">/mgr/menu/htmlAdmin_list.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
                        <td>등록_해당없음</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/htmlAdmin_write.jsp">/mgr/menu/htmlAdmin_write.jsp</a></td>
						<td class="">Editor 삽입</td>
					</tr>
					<tr>
                        <td>등록_인사말</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/htmlAdmin_intro.jsp">/mgr/menu/htmlAdmin_intro.jsp</a></td>
						<td class="">Editor 삽입</td>
					</tr>
					<tr>
                        <td>등록_지부소개</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/htmlAdmin_info.jsp">/mgr/menu/htmlAdmin_info.jsp</a></td>
						<td class="">Editor 삽입</td>
					</tr>
					<tr>
                        <td>등록_연혁</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/htmlAdmin_history.jsp">/mgr/menu/htmlAdmin_history.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
                        <td>등록_게시판</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/htmlAdmin_board.jsp">/mgr/menu/htmlAdmin_board.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
						<td rowspan="2">상세 컨텐츠 관리</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/boardcon_list.jsp">/mgr/menu/boardcon_list.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
                        <td>등록</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/menu/boardcon_write.jsp">/mgr/menu/boardcon_write.jsp</a></td>
						<td class="">Editor 삽입</td>
					</tr>
                    <tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr>
						<td>지부 설정</td>
                        <td colspan="2">지부 정보 수정</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/branch_info/branchInfo.jsp">/mgr/branch_info/branchInfo.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr>
						<td rowspan="3">자원봉사신청 관리</td>
                        <td colspan="2">자원봉사신청 등록</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/volunteer/volunteer_write.jsp">/mgr/volunteer/volunteer_write.jsp</a></td>
						<td class="">Editor 삽입</td>
					</tr>
					<tr>
                        <td rowspan="2">자원봉사신청자 관리</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/volunteer/volunteer_list.jsp">/mgr/volunteer/volunteer_list.jsp</a></td>
						<td class="">엑셀다운로드 기능</td>
					</tr>
					<tr>
                        <td>상세</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/volunteer/volunteer_view.jsp">/mgr/volunteer/volunteer_view.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr>
						<td rowspan="4">교육신청 관리</td>
                        <td rowspan="2">교육신청 등록</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/edu/edu_list.jsp">/mgr/edu/edu_list.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr>
                        <td>등록</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/edu/edu_write.jsp">/mgr/edu/edu_write.jsp</a></td>
						<td class="">Editor 삽입</td>
					</tr>
					<tr>
                        <td rowspan="2">교육신청자 관리</td>
                        <td>리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/edu/applicant_list.jsp">/mgr/edu/applicant_list.jsp</a></td>
						<td class="">엑셀다운로드 기능</td>
					</tr>
					<tr>
                        <td>상세</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/edu/applicant_view.jsp">/mgr/edu/applicant_view.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr><td colspan="6" style="height:1px; background:#666;" class="end"></td></tr>
					<tr> 
						<td rowspan="2">온라인문의</td>
                        <td colspan="2">리스트</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/branch_qna/qna_list.jsp">/mgr/branch_qna/qna_list.jsp</a></td>
						<td class=""></td>
					</tr>
					<tr> 
                        <td colspan="2">상세</td>
                        <td class="done">○</td>
						<td class=""><a target="_blank" href="/mgr/branch_qna/qna_view.jsp">/mgr/branch_qna/qna_view.jsp</a></td>
						<td class=""></td>
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
