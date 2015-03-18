<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/front/include/inc_header.jsp" flush="false" />
	<!-- CONTENTS BODY -->
	<jsp:include page="/front/include/inc_path.jsp" flush="false" />
	<div id="container">
		<div class="contents_wrap">
			<jsp:include page="/front/include/inc_lnb.jsp" flush="false" />
			<!-- CONTENTS -->
			<div class="contentsBox">
				<h3>투뎁스메뉴명</h3>
				<p class="subdiscription">서브타이틀 노출영역</p>
				<div class="contents board list"><!-- 리스트형식 페이지에 검색이 있으면 "list" class 추가 -->
					<!-- search area -->
					<div class="searchArea">
						<div><input type="text" name="" id="" title="게시판 검색어 입력"/><button>게시글검색</button></div>
					</div>
					<!-- //search area -->
					<!-- board list : 갤러리형리스트 1페이지 게시글 8개 -->
					<ul class="galleryList">
						<!-- 리스트 반복시작 -->
						<li>
							<img src="/images/front/temp/thum2.jpg" alt="게시글 제목 썸네일" class="img_thum"/>
							<div class="boardinfo">
								<a href="#">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아</a>
								<p>2014/12/12 | 조회수 999</p>
							</div>
						</li>
						<!-- //리스트 반복시작 -->
						<li>
							<img src="/images/front/temp/thum2.jpg" alt="게시글 제목 썸네일" class="img_thum"/>
							<div class="boardinfo">
								<a href="#">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아</a>
								<p>2014/12/12 | 조회수 999</p>
							</div>
						</li>
						<li>
							<img src="/images/front/temp/thum2.jpg" alt="게시글 제목 썸네일" class="img_thum"/>
							<div class="boardinfo">
								<a href="#">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아</a>
								<p>2014/12/12 | 조회수 999</p>
							</div>
						</li>
						<li>
							<img src="/images/front/temp/thum2.jpg" alt="게시글 제목 썸네일" class="img_thum"/>
							<div class="boardinfo">
								<a href="#">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아</a>
								<p>2014/12/12 | 조회수 999</p>
							</div>
						</li>
						<li>
							<img src="/images/front/temp/thum2.jpg" alt="게시글 제목 썸네일" class="img_thum"/>
							<div class="boardinfo">
								<a href="#">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아</a>
								<p>2014/12/12 | 조회수 999</p>
							</div>
						</li>
					</ul>
					<!-- //board list -->
					<jsp:include page="/front/include/inc_page.jsp" flush="false" />
				</div>
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
	
	<script type="text/javascript">
		$(function() {
			//갤러리리스트 수 체크
			var liNum = $('.galleryList li').length;
			$('.galleryList li').each(function(index){
				var num = Math.floor(($(this).index())/4);
				var rest = $(this).index()%4;
				if(rest == 0){$(this).css('padding-left','0');}
				if(rest == 3){$(this).css('padding-right','0');}
				if(liNum > 4 && num == 0){$(this).css('border-bottom','1px solid #f1f1f1');}
			});
		});
	</script>
</body>
</html>