<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<!-- 지부관리자일 경우에 노출 --><p class="table_dis">* 메인 배너는 최대 2개까지만 등록 가능 </p>
					<!-- board list -->
					<table class="table table-bordered table-list">
						<caption>메인페이지 이벤트 배너 리스트</caption>
						<colgroup>
							<col width="150"/>
							<col width=""/>
							<col width="200"/>
							<col width="100"/>
							<col width="100"/>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">
									<!-- 마스터관리자 -->적용그룹
									<!-- 지부관리자 -->노출순서
								</th>
								<th scope="col">배너명</th>
								<th scope="col">노출기간</th>
								<th scope="col">등록일</th>
								<th scope="col">노출여부</th>
							</tr>
						</thead>
						<tbody>
							<!-- 마스터관리자 -->
							<tr>
								<th><input type="checkbox" id="" /> <label for="">전체</label></th>
								<td><!-- 수정페이지 이동 --><a href="#">캠페인 배너 제목</a></td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>Yes</td>
							</tr>
							<tr>
								<!-- 노출여부 No일 경우 checkbox disabled="" -->
								<th><input type="checkbox" id="" disabled=""/> <label for="">좋은마음센터</label></th>
								<td><!-- 수정페이지 이동 --><a href="#">캠페인 배너 제목</a></td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>No</td>
							</tr>
							<!-- //마스터관리자 -->
							
							<!-- 지부관리자 -->
							<!-- 첫번째 슈퍼관리자 등록배너 -->
							<tr class="lock">
								<th><input type="checkbox" id="" disabled=""/> <label for="">1(고정)</label></th>
								<td><!-- 수정페이지 연결 없음 -->캠페인 배너 제목</td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>Yes</td>
							</tr>
							<!-- //첫번째 슈퍼관리자 등록배너 -->
							<tr>
								<th><input type="checkbox" id="" /> <label for="">2</label></th>
								<td><!-- 수정페이지 이동 --><a href="#">캠페인 배너 제목</a></td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>Yes</td>
							</tr>
							<tr>
								<!-- 노출여부 No일 경우 checkbox disabled="" -->
								<th><input type="checkbox" id="" disabled=""/> <label for="">3</label></th>
								<td><!-- 수정페이지 이동 --><a href="#">캠페인 배너 제목</a></td>
								<td>2009-01-01 ~ 2009-01-01</td>
								<td>2009-01-01</td>
								<td>No</td>
							</tr>
							<!-- //지부관리자 -->
						</tbody>
					</table>
					<!-- //board list -->
					<!-- button -->
					<div class="btnarea">
						<div class="fl">
							<button class="btn btn-green">선택 삭제</button>
						</div>
						<div class="fr">
							<a href="#"class="btn btn-green">등록</a>
						</div>
					</div>
					<!-- //button -->
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