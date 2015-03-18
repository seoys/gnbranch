<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/front/include/inc_header.jsp" flush="false" />
	<!-- CONTENTS BODY -->
	<div class="pagepath"><div><span class="home"><a href="/">Home</a></span><span class="depth1"><a href="#">소식지</a></span></div></div>
	<div id="container">
		<div class="contents_wrap">
			<!-- LNB -->
			<div class="frontLnb">
				<h2><a href="#">소식지</a></h2>
				<ul>
					<li class="depth2"><a href="#" target="_blank" class="depths2link">웹진 NOW</a></li>
					<li class="depth2"><a href="#" target="_blank" class="depths2link">좋은이웃</a></li>
					<li class="depth2"><a href="#" target="_blank" class="depths2link">희망우체통</a></li>
				</ul>
			</div>
			<!-- //LNB -->
			<!-- CONTENTS -->
			<div class="contentsBox">
				<h3>소식지</h3>
				<p class="subdiscription">더불어 사는 사회, 좋은 이웃 굿네이버스가 희망을 전해드립니다.</p>
				<div class="contents news">
					<div class="newsWrap">
						<div class="fl">
							<!-- 웹진NOW 최신호 이미지 불러오기 -->
							<img src="/images/front/temp/newsletter.jpg" alt="웹진Now 최신호" />
							<p>웹진 NOW<a href="#" class="btn_indetail">자세히보기</a></p>
						</div>
						<div class="fr">
							<!-- 좋은이웃 최신호 이미지 불러오기 -->
							<img src="/images/front/temp/good.jpg" alt="좋은이웃 최신호" />
							<p>좋은이웃<a href="#" class="btn_indetail">자세히보기</a></p>
						</div>
					</div>
				</div>
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
</body>
</html>