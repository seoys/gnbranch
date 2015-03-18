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
					<!-- board list : 썸네일형 리스트 1페이지 게시글 4개 -->
					<ul class="thumList">
						<!-- 리스트 반복시작 -->
						<li>
							<img src="/images/front/temp/thum1.jpg" alt="게시글 제목 썸네일" class="img_thum"/>
							<div class="boardinfo">
								<div class="section1">
									<p class="title">제목<a href="#" class="info">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아 그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아</a></p>
									<p class="hits">조회수<span class="info">999</span></p>
								</div>
								<!-- 게시물 내용요약 최대 2줄까지.. -->
								<div class="section2">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아 상처를 주고받고 하는 게 사람이고 굳이 그걸 겁내진 않았던 것 같아</div>
								<div class="section3">
									<p class="date">등록일<span class="info">2014/12/12</span></p>
									<p class="writer">작성자<span class="info">굿네이버스</span></p>
								</div>
							</div>
						</li>
						<!-- //리스트 반복시작 -->
						<li>
							<img src="/images/front/temp/thum1.jpg" alt="게시글 제목 썸네일" class="img_thum"/>
							<div class="boardinfo">
								<div class="section1">
									<p class="title">제목<a href="#" class="info">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아</a></p>
									<p class="hits">조회수<span class="info">999</span></p>
								</div>
								<div class="section2">그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아 상처를 주고받고 하는 게 사람이고 굳이 그걸 겁내진 않았던 것 같아</div>
								<div class="section3">
									<p class="date">등록일<span class="info">2014/12/12</span></p>
									<p class="writer">작성자<span class="info">굿네이버스</span></p>
								</div>
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
</body>
</html>