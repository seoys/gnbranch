<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<!-- 각 지부명 타이틀로 지정 그룹명 + 지부명 -->
	<title>굿네이버스 좋은마음센터 서울동작</title>
	<link rel="stylesheet" type="text/css" href="/css/front/branch_base.css"/>
	
	<!-- 기본템플릿css -->
	<link rel="stylesheet" type="text/css" href="/css/front/common.css"/>
	<!-- 아동보호전문기관_ 위탁 그룹인경우 css -->
	<!-- <link rel="stylesheet" type="text/css" href="/css/front/custom.css"/> -->
</head>
<body>
	<!-- HEADER -->
	<div id="header">
		<!-- 관리자에서 입력된 지부로고 이미지-->
		<h1><a href="/" class="logolink"><img src="/images/temp/logo.gif" alt="좋은마음센터 서울동작" height="45"/></a></h1>
		
		<!-- header 버튼노출 구분 -->
			<!-- [그룹구분] 시도본부 / 복지관 / 해외지부 : 온라인문의 --><a href="javascript:openLayer('onlineqna');" class="link linkqna" title="온라인문의 레이어팝업 열기">온라인문의</a>	
			<!-- [그룹구분] 좋은마음센터 : 버튼없음 -->
			<!-- [그룹구분] 아동권리지원센터 : 버튼없음 -->
			<!-- [그룹구분] 아동보호전문기관_ 법인 : 교육신청 / 온라인문의 --><a href="" class="link linkedu" title="교육 신청레이어팝업 열기">교육 신청</a><a href="javascript:openLayer('onlineqna');" class="link linkqna" title="온라인문의 레이어팝업 열기">온라인문의</a>
			<!-- [그룹구분] 아동보호전문기관_ 위탁 : 교육신청 --><a href="" class="link linkedu" title="교육 신청레이어팝업 열기">교육 신청</a>
		<!-- //header 버튼노출 구분 -->
	</div>
	<!-- //HEADER -->
	<!--  GNB -->
	<div class="nav">
		<ul>
			<li><a href="#">메뉴명1</a></li>
			<li><a href="#">메뉴명2</a></li>
			<li><a href="#">메뉴명3</a></li>
			<li><a href="#">메뉴명4</a></li>
			<!-- 고정메뉴 -->
			<li><a href="#">후원안내</a></li>
			<li><a href="#">소식지</a></li>
			<!-- //고정메뉴 -->
		</ul>
	</div>
	<!--  //GNB -->