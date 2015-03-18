<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<!-- write -->
					<fieldset>
						<legend>교육신청내용 상세</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>교육신청내용</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">교육명</th>
									<td>인형극 (교육장소 : 서울시 용산구 청파동 백범 김구 기념관 7층)</td>
								</tr>
								<tr>
									<th scope="row">신청자</th>
									<td>[개인] 신청자 이름</td>
								</tr>
								<tr>
									<th scope="row">신청자 연락처</th>
									<td>010-0000-0000</td>
								</tr>
								<tr>
									<th scope="row">신청자 이메일</th>
									<td>aaa@aaa.com</td>
								</tr>
								<tr>
									<th scope="row">신청인원</th>
									<td>20명</td>
								</tr>
								<tr>
									<th scope="row">교육 요청 일자</th>
									<td>2014-12-12</td>
								</tr>
							</tbody>
						</table>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fl">
								<a href="#" class="btn btn-green">목록</a>
							</div>
							<div class="fr">
								<button class="btn btn-green">확인</button>
								<button class="btn btn-green">삭제</button>
							</div>
						</div>
						<!-- //button -->
					</fieldset>
					<!-- //write -->
					<!-- //admin page contents end -->
				</div>
			</div>
			<!-- pageContents -->
		</div>
		<!-- //contentsWrapper -->
	</div>
	
	<jsp:include page="/mgr/include/inc_footer.jsp" flush="false" />
</body>
</html>