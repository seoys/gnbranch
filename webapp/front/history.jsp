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
				<div class="contents history">
					<ol class="yearList">
						<!-- 년도시작 -->
						<li>
							<span class="yearNum">2014</span>
							<ol class="dateList">
								<li><!-- 날짜 --><span class="dateNum">01.01</span><!-- 내용 --><span class="historyCon">지부연혁 상세내용 나오는 부분</span></li>
								<li><span class="dateNum">02.02</span><span class="historyCon">지부연혁 상세내용 나오는 부분 지부연혁 상세내용 나오는 부분 지부연혁 상세내용 나오는 부분 지부연혁 상세내용 나오는 부분</span></li>
								<li><span class="dateNum">03.03</span><span class="historyCon">지부연혁 상세내용 나오는 부분</span></li>
							</ol>
						</li>
						<!-- //년도끝 -->
						<li>
							<span class="yearNum">2013</span>
							<ol class="dateList">
								<li><span class="dateNum">01.01</span><span class="historyCon">지부연혁 상세내용 나오는 부분</span></li>
								<li><span class="dateNum">02.02</span><span class="historyCon">지부연혁 상세내용 나오는 부분 지부연혁 상세내용 나오는 부분 지부연혁 상세내용 나오는 부분 지부연혁 상세내용 나오는 부분</span></li>
								<li><span class="dateNum">03.13</span><span class="historyCon">지부연혁 상세내용 나오는 부분</span></li>
							</ol>
						</li>
					</ol>
				</div>
				
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
</body>
</html>