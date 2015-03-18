<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/front/include/inc_header.jsp" flush="false" />
	<!-- [그룹구분] 좋은마음센터 -->
	<!-- CONTENTS BODY -->
	<link rel="stylesheet" href="/css/front/typeB.css" media="all" />
	<div id="container" class="index typeB">
		<div class="mainWrap">
			<div class="leftArea fl">
				<!-- 지부관리자 설정 게시판 -->
				<div class="branchBoard">
					<div class="bbsBox branchBox1">
						<p class="bbsTitle">센터소식</p>
						<ul class="styleList">
							<li><a href="#">[말머리] 게시글 제목 나...</a><span>2015/00/00</span></li>
							<li><a href="#">[말머리] 게시글 제목 나...</a><span>2015/00/00</span></li>
							<li><a href="#">[말머리] 게시글 제목 나...</a><span>2015/00/00</span></li>
							<li><a href="#">게시글 제목 나오는 부분</a><span>2015/00/00</span></li>
							<li><a href="#">게시글 제목 나오는 부분</a><span>2015/00/00</span></li>
						</ul>
						<a href="#" class="btn_more">게시글 더보기</a>
					</div>
					<div class="bbsBox branchBox2">
						<p class="bbsTitle">공지소식</p>
						<ul class="styleList">
							<li><a href="#">[말머리] 게시글 제목 나...</a><span>2015/00/00</span></li>
							<li><a href="#">[말머리] 게시글 제목 나...</a><span>2015/00/00</span></li>
							<li><a href="#">[말머리] 게시글 제목 나...</a><span>2015/00/00</span></li>
							<li><a href="#">[말머리] 게시글 제목 나...</a><span>2015/00/00</span></li>
							<li><a href="#">[말머리] 게시글 제목 나...</a><span>2015/00/00</span></li>
						</ul>
						<a href="#" class="btn_more">게시글 더보기</a>
					</div>
					<div class="bbsBox branchBox3">
						<p class="bbsTitle">언론보도</p>
						<ul class="styleThumnail02">
							<li><a href="#"><img src="/images/front/temp/mainTemp03.jpg" alt="" /><p class="title">게시글 제목 나오는 부분</p></a></li>
						</ul>
						<a href="#" class="btn_more">게시글 더보기</a>
					</div>
				</div>
				<!-- //지부관리자 설정 게시판 -->
				<!-- 센터둘러보기 : 배너이미지 고정/링크 관리자에서 수정가능 -->
				<a href="#" class="link01"><img src="/images/front/main/typeB_banner_center.jpg" alt="센터둘러보기" /></a>
			</div>
			
			<div class="centerArea">
				<!-- 빅배너영역 : [관리자] 지부 메인 관리 > 메인 배너 등록 -->
				<div class="bigBannerArea">
					<ul>
						<li><a href="#" target=""><img src="/images/front/temp/bigTypeB.jpg" alt="배너명 삽입되도록 작업" /></a></li>
						<li><a href="#" target=""><img src="/images/front/temp/bigTypeB.jpg" alt="배너명 삽입되도록 작업" /></a></li>
						<li><a href="#" target=""><img src="/images/front/temp/bigTypeB.jpg" alt="배너명 삽입되도록 작업" /></a></li>
					</ul>
				</div>
				<!-- //빅배너영역 -->
				
				<!-- 링크배너영역 -->
				<div class="bannerArea">
					<ul><!-- 고정컨텐츠 : [관리자] 지부 메인 관리 > 메인 컨텐츠 설정에서 링크수정 -->
						<li><a href="#" target="_blank"><img src="/images/front/main/typeB_banner01.jpg" alt="아동의 발달수준, 기능을 평가 욕구유형별 심리치료 종류 결정. 심리 평가 바로가기" /></a></li>
						<li><a href="#" target="_blank"><img src="/images/front/main/typeB_banner02.jpg" alt="다양한 심리치료를 통해 문제해결 및 정서발달을 도모. 치료 프로그램 바로가기" /></a></li>
						<li><a href="#" target="_blank"><img src="/images/front/main/typeB_banner03.jpg" alt="아동과 가정의 강점을 활용한 전문복지서비스 지원. 연계 프로그램 바로가기" /></a></li>
					</ul>
				</div>
				<!-- // 링크배너영역 -->
			</div>
			<div class="rightArea fr">
				<!-- 지부관리자 설정 게시판 -->
				<div class="bbsBox branchBox3">
					<p class="bbsTitle">포토갤러리</p>
					<ul class="styleThumnail02">
						<li><a href="#"><img src="/images/front/temp/mainTemp03.jpg" alt="" /><p class="title">게시글 제목 나오는 부분</p></a></li>
					</ul>
					<a href="#" class="btn_more">게시글 더보기</a>
				</div>
				<!-- //지부관리자 설정 게시판 -->
				
				<!-- 좋은마음칼럼 게시글 -->
				<div class="bbsBox branchBox3">
					<p class="bbsTitle">좋은마음 칼럼</p>
					<div class="goodmaum">
						<a href="#"><div><img src="/images/front/temp/mainTemp02.jpg" alt="" /><p class="title">게시글 제목 나오는 부분</p></div><p class="summary">게시글 요약내용 나오는 부분 게시물 요약내용 최대 두줄까지 노출...</p></a>
					</div>
					<a href="#" class="btn_more">게시글 더보기</a>
				</div>
				<!-- //좋은마음칼럼 게시글 -->
				
				<!-- 운영시간 안내 : 전화번호 부분만 관리자입력값 연동 -->
				<div class="centerInfo">
					<p class="tel">02-814-1391</p>
					<img src="/images/front/main/typeB_txt_dayinfo.png" alt="" class="block" />
					<p class="blind">운영시간 평일 오전 10시부터 오후 7시까지,토요일은 사전 예약 상담</p>
					<p class="text">모든 상담은 예약제로 운영됩니다.</p>
				</div>
				<!-- //운영시간 안내 -->
				
				<!-- 온라인문의 -->
				<a href="javascript:openLayer('onlineqna');" class="btn_online"><img src="/images/front/main/typeB_btn_online.jpg" alt="온라인문의하기" /></a>
			</div>
		</div>
		<!--  하단배너 영역 -->
		<div class="bottomArea">
			<!-- 마스터관리자 패밀리배너 -->
			<div class="fl">
				<ul><!-- 최대 3개까지 등록 -->
					<li><a href="#" target="_blank"><img src="/images/front/temp/banner01.jpg" alt="배너명 삽입되도록 작업" /></a></li>
					<li><a href="#" target="_blank"><img src="/images/front/temp/banner01.jpg" alt="배너명 삽입되도록 작업" /></a></li>
					<li><a href="#" target="_blank"><img src="/images/front/temp/banner01.jpg" alt="배너명 삽입되도록 작업" /></a></li>
				</ul>
			</div>
			<!-- //마스터관리자 패밀리배너 -->
			<!-- 지부관리자 패밀리배너 -->
			<div class="fr">
				<p>나눔기업<span></span></p>
				<div class="bannerWrap">
						<ul>
							<li><a href="#" target="_blank"><img src="/images/front/temp/banner02.jpg" alt="배너명 삽입되도록 작업" /></a></li>
							<li><a href="#" target="_blank"><img src="/images/front/temp/banner02.jpg" alt="배너명 삽입되도록 작업" /></a></li>
							<li><a href="#" target="_blank"><img src="/images/front/temp/banner02.jpg" alt="배너명 삽입되도록 작업" /></a></li>
							<li><a href="#" target="_blank"><img src="/images/front/temp/banner02.jpg" alt="배너명 삽입되도록 작업" /></a></li>
							<li><a href="#" target="_blank"><img src="/images/front/temp/banner02.jpg" alt="배너명 삽입되도록 작업" /></a></li>
							<li><a href="#" target="_blank"><img src="/images/front/temp/banner02.jpg" alt="배너명 삽입되도록 작업" /></a></li>
						</ul>
				</div>
			</div>
			<!-- 마스터관리자 패밀리배너 -->
		</div>
		<!--  하단배너 영역 -->
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
	<script src="/js/plugins/jquery.bxslider.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('.bigBannerArea ul').bxSlider();
			var bWidth = $('.bigBannerArea .bx-pager').width();
			$('.bigBannerArea .bx-pager').css('margin-left',-(bWidth/2)+'px');
			$('.bigBannerArea .bx-prev').css('margin-left',-(bWidth/2)-40+'px');
			$('.bigBannerArea .bx-next').css('margin-right',-(bWidth/2)-40+'px');
			$('.bannerWrap ul').bxSlider({
				pager			: false,
				maxSlides	: 4,
				moveSlides	: 4,
				slideWidth	: 90
			});
		});
	</script>
</body>
</html>