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
				<div class="contents board view">
					<div class="board_view">
						<!-- 타이틀 --><p class="title">[말머리] 게시글 제목이 나오는 부분입니다.</p>
						<!-- 등록정보 -->
						<ul class="itemList">
							<li><span class="itemTit">등록일</span><span class="itemCon">2014/12/12</span></li>
							<li><span class="itemTit">조회수</span><span class="itemCon">9999</span></li>
							<li><span class="itemTit">작성자</span><span class="itemCon">굿네이버스</span></li>
							<li><span class="itemTit">기간</span><span class="itemCon">2014/12/12~2014/12/12</span></li>
						</ul>
						<!-- //등록정보 -->
						<!-- 등록내용 -->
						<div class="detail_con">
							<p>에디터에서 입력한 게시판 내용 또는 사용자가 입력한 글이 나오는 부분</p><p></p>
							<p>그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아 </p>
							<p>상처를 주고받고 하는 게 사람이고 굳이 그걸 겁내진 않았던 것 같아</p>
							<p>닦아내면 그만인 게 눈물이니까 안고 가면 그만인 게 또 기억이니까</p>
							<p>가끔은 아직도 그럴 수 있을 거라고 생각이 들 때가 있어 하지만 이내 다시 또</p>
							<p>뭔가 좀 낯설고 익숙하진 않아도 또 그래서 더 아름다웠던 것 같아 </p>
							<p>부서질정도로 힘껏 부딪혀보고 그러는걸 겁내진 않았던 것 같아 </p>
							<p>버텨내면 그만인 게 아픔이니까 안고 가면 그만인 게 또 슬픔이니까 </p>
							<p>가끔은 아직도 그럴 수 있을 거라고 생각이 들 때가 있어 하지만 이내 다시</p>
							<p>두려움이 앞서고 마음이 무거워져 어느새 또 입가엔 한숨이 맺혀 </p>
							<p>시간은 날 어른이 되게 했지만 강해지게 하지는 않은 것 같아 시간은 날 어른이 되게 했지만 그만큼 더 바보로 만든 것 같아</p>
							<p>그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아 부서질 정도로 하는 게 사랑이고 굳이 그걸 겁내진 않았던 것 같아</p>
						</div>
						<!-- //등록내용 -->
						<!-- 등록파일 --><p class="fileNeme"><span class="itemTit">첨부파일</span><a href="#" class="itemCon">파일명을 클릭하면 다운이됩니다.jpg</a></p>
					</div>
					<!-- 라이브리댓글 -->
					<div class="replyWrap">댓글영역</div>
					<!-- button -->
					<div class="btnarea">
						<div class="fr">
							<a href="#" class="btn">목록</a>
						</div>
					</div>
					<!-- //button -->
				</div>
				
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
</body>
</html>