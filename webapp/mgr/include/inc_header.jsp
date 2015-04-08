<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/inc/taglib.jsp"%>
<%@ include file="/WEB-INF/jsp/cmmn/inc/depths.jsp"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>지부 어드민</title>
	<link rel="stylesheet" type="text/css" href="/css/mgr/base.css" />
	<link rel="stylesheet" type="text/css" href="/js/bower_components/jquery-ui/themes/base/all.css" />
</head>
<body>
	<!-- HEADER -->
	<div id="header">
		<h1><a href="#">굿네이버스 어드민</a></h1>
		<!-- 접속자정보 --><p>${sessionVO.name_nm}님 환영합니다.</p>
		<!-- utilMenu -->
		<ul class="list-inline">
			<li><a href="/">Home</a></li>
			<li><a href="#">비밀번호 변경</a></li>
			<li><a href="/mgr/logout.gn">로그아웃</a></li>
		</ul>
		<!-- //utilMenu -->
	</div>
	<!-- //HEADER -->
	<div id="container" class="master">
		<!-- 슈퍼관리자만 보이는 영역 -->
		<c:if test="${sessionVO.group_sq == 1}">
		<div id="branch">
			<a href="#">슈퍼 관리자<br/>메뉴로 돌아가기</a>
			<!-- 이동지부선택 -->
			<div class="branch_select form-group">
				<!-- label for="" & select id="" 매칭 -->
				<label for="">그룹</label>
				<select name="" id="" class="form-control">
					<option value="">시도본부</option>
				</select>
				<label for="">지부명</label>
				<select name="" id="" class="form-control">
					<option value="">서울본부</option>
				</select><button class="btn btn-form">검색</button>
			</div>
			<!-- //이동지부선택 -->
		</div>
		</c:if>
		<!-- //슈퍼관리자만 보이는 영역 -->
		
		<!-- contentsWrapper -->
		<div id="contents">
			<!-- navigation -->
			<div class="sidebar-collapse">
				<c:choose>
					<c:when test="${sessionVO.group_sq == 1}">
						<ul class="nav superMenu" id="side-menu">
							<li class="masterMenu">
		                        <a href="/mgr/grouplist.gn">지부 마스터</a>
		                        <ul class="nav-second-level">
		                            <li class="${depth11Active}"><a href="/mgr/grouplist.gn">- 관리자 그룹 관리</a></li>
									<li class="${depth12Active}"><a href="/mgr/accountList.gn">- 지부 관리자 계정 관리</a></li>
		                        </ul>
		                    </li>
							<li>
		                        <a href="/mgr/bannerMList.gn">지부 메인 관리</a>
		                        <ul class="nav-second-level">
		                            <li class="${depth31Active}"><a href="/mgr/bannerMList.gn">- 메인 배너</a></li>
		                            <li class="${depth32Active}"><a href="/mgr/bannerFList.gn">- 패밀리 배너</a></li>
		                            <!-- 메뉴추가 -->
		                            <li><a href="#">- 메인 컨텐츠 설정</a></li>
		                        </ul>
		                    </li>
		                    <li>
								<a href="/mgr/menuMain.gn">메뉴 생성</a>
							</li>
							<li class="masterMenu">
								<a href="#none">페이지 설정</a>
								<ul class="nav-second-level">
									<li><a href="#">- 메뉴별 컨텐츠 생성</a></li>
									<li><a href="#">- 상세 컨텐츠 관리</a></li>
								</ul>
							</li>
							
						</ul>
					</c:when>
					<c:when test="${!empty sessionVO.group_sq}">
						<ul class="nav superMenu" id="side-menu">
							<li class="masterMenu">
		                        <a href="/mgr/grouplist.gn">지부 마스터</a>
		                        <ul class="nav-second-level">
		                            <li class="${depth11Active}"><a href="/mgr/grouplist.gn">- 관리자 그룹 관리</a></li>
									<li class="${depth12Active}"><a href="/mgr/accountList.gn">- 지부 관리자 계정 관리</a></li>
		                        </ul>
		                    </li>
							<li class="masterMenu">
								<a href="#none">지부 설정</a>
								<ul class="nav-second-level">
									<li><a href="#">- 지부 정보 수정</a></li>
									<li><a href="#">- 메인 컨텐츠 설정</a></li>
								</ul>
							</li>
							<li>
		                        <a href="/mgr/bannerMList.gn">지부 메인 관리</a>
		                        <ul class="nav-second-level">
		                            <li class="${depth31Active}"><a href="/mgr/bannerMList.gn">- 메인 배너</a></li>
		                            <li class="${depth32Active}"><a href="/mgr/bannerFList.gn">- 패밀리 배너</a></li>
		                        </ul>
		                    </li>
		                    
							<li class="masterMenu">
								<a href="#none">페이지 설정</a>
								<ul class="nav-second-level">
									<li><a href="#">- 메뉴별 컨텐츠 생성</a></li>
									<li><a href="#">- 상세 컨텐츠 관리</a></li>
								</ul>
							</li>
							<li>
								<a href="#none">메뉴 생성</a>
							</li>
							<li>
								<a href="#none">자원봉사신청 관리</a>
								<ul class="nav-second-level">
									<li><a href="#">- 자원봉사신청 등록</a></li>
									<li><a href="#">- 자원봉사신청 신청자 관리</a></li>
								</ul>
							</li>
							<li>
								<a href="#none">교육 관리</a>
								<ul class="nav-second-level">
									<li><a href="#">- 교육 등록</a></li>
									<li><a href="#">- 교육 신청자 관리</a></li>
								</ul>
							</li>
							<li><a href="#">온라인 문의</a></li>
						</ul>
					</c:when>
					<c:otherwise>
					<!-- test를 위한 lnb 오픈시 삭제 -->
						<ul class="nav superMenu" id="side-menu">
							<li class="masterMenu">
		                        <a href="/mgr/grouplist.gn">지부 마스터</a>
		                        <ul class="nav-second-level">
		                            <li class="${depth11Active}"><a href="/mgr/grouplist.gn">- 관리자 그룹 관리</a></li>
									<li class="${depth12Active}"><a href="/mgr/accountList.gn">- 지부 관리자 계정 관리</a></li>
		                        </ul>
		                    </li>
							<!-- <li class="masterMenu">
								<a href="#none">지부 설정</a>
								<ul class="nav-second-level">
									<li><a href="#">- 지부 정보 수정</a></li>
									<li><a href="#">- 메인 컨텐츠 설정</a></li>
								</ul>
							</li> -->
							<li>
		                        <a href="/mgr/bannerMList.gn">지부 메인 관리</a>
		                        <ul class="nav-second-level">
		                            <li class="${depth31Active}"><a href="/mgr/bannerMList.gn">- 메인 배너</a></li>
		                            <li class="${depth32Active}"><a href="/mgr/bannerFList.gn">- 패밀리 배너</a></li>
		                        </ul>
		                    </li>
		                    
							<li class="masterMenu">
								<a href="/mgr/menuTemplateList.gn">페이지 설정</a>
								<ul class="nav-second-level">
									<li class="${depth41Active}"><a href="/mgr/menuTemplateList.gn">- 메뉴별 컨텐츠 생성</a></li>
									<li class="${depth42Active}"><a href="#">- 상세 컨텐츠 관리</a></li>
								</ul>
							</li>
							<li  class="masterMenu">
								<a href="/mgr/menuMain.gn">메뉴 관리</a>
								<ul class="nav-second-level">
									<li class="${depth51Active}"><a href="/mgr/menuMain.gn">- 메뉴 생성</a></li>
								</ul>
							</li>
							<!-- <li>
								<a href="#none">자원봉사신청 관리</a>
								<ul class="nav-second-level">
									<li><a href="#">- 자원봉사신청 등록</a></li>
									<li><a href="#">- 자원봉사신청 신청자 관리</a></li>
								</ul>
							</li>
							<li>
								<a href="#none">교육 관리</a>
								<ul class="nav-second-level">
									<li><a href="#">- 교육 등록</a></li>
									<li><a href="#">- 교육 신청자 관리</a></li>
								</ul>
							</li>
							<li><a href="#">온라인 문의</a></li> -->
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- //navigation -->