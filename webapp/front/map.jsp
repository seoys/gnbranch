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
				<div class="contents map">
					<!-- map : 지도삽입 -->
					<div id="mapContainer"></div>
					<!-- map info -->
					<dl>
						<dt>주소</dt>
						<dd>인천광역시 남동구 구월3동 1115-1  5층</dd>
					</dl>
					<div class="whalf_wrap">
						<dl  class="whalf">
							<dt>연락처</dt>
							<dd>032) 442-1391</dd>
						</dl>
						<dl class="whalf">
							<dt>팩스번호</dt>
							<dd>032) 442-1395</dd>
						</dl>
					</div>
					<dl>
						<dt>교통편</dt>
						<dd>인천메트로 1호선 예술회관 역 하차, 10번 출구로 나오셔서 인천고용센터 방면 횡단보도 → 버스정류장 → 장수농장 영양탕부페를 지나시면 1층에 신촌설렁탕과 약국이 있는 건물이 보입니다. 그 건물 5층이 굿네이버스 인천남부아동권리지원센터입니다.</dd>
					</dl>					
				</div>
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
</body>
</html>