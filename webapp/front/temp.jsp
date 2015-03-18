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
				<div class="contents intro">
					<!-- button -->
					<div class="btnarea">
						<span class="fl">* 욕설, 비방, 상업적인 게시글은 관리자에 의해 삭제될 수 있습니다.</span>
						<div class="fr">
							<a href="#" class="btn">등록</a>
							<a href="#" class="btn">취소</a>
						</div>
					</div>
					<!-- //button -->
					<!-- paging -->
					<div class="paginate">
						<a class="p_btn" href="#"><img alt="처음 페이지" src="/images/front/common/btn_first.gif"></a>
						<a class="p_btn" href="#"><img alt="이전 페이지" src="/images/front/common/btn_prev.gif"></a>
						<span class="page-num">
							<strong>1</strong>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#">4</a>
							<a href="#">5</a>
							<a href="#">6</a>
							<a href="#">7</a>
							<a href="#">8</a>
							<a href="#">9</a>
							<a href="#">10</a>
						</span>
						<a class="p_btn" href="#"><img alt="다음 페이지" src="/images/front/common/btn_next.gif"></a>
						<a class="p_btn" href="#"><img alt="끝 페이지" src="/images/front/common/btn_end.gif"></a>
					</div>
					<!-- //paging -->
				</div>
				
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
</body>
</html>