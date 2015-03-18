<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					<!-- list -->
					<fieldset>
						<legend>교육등록 리스트</legend>
						<!-- board list -->
						<table class="table table-bordered table-list">
							<caption>교육등록 리스트</caption>
							<colgroup>
								<col width="50"/>
								<col width=""/>
								<col width="300"/>
								<col width="100"/>
								<col width="70"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">교육명</th>
									<th scope="col">교육장소</th>
									<th scope="col">등록일</th>
									<th scope="col">노출여부</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2</td>
									<td class="text_left">
										<!-- 수정페이지 이동 --><a href="#">인형극</a>
										<!-- 새글 --><img src="/images/mgr/common/ico_new.gif" alt="새글아이콘" class="img_ico"/>
									</td>
									<td>서울시 용산구 청파동 백범 김구 기념관 7층</td>
									<td>2009-01-01</td>
									<td>YES</td>
								</tr>
								<tr>
									<td>1</td>
									<td class="text_left">
										<!-- 수정페이지 이동 --><a href="#">인형극</a>
									</td>
									<td>서울시 용산구 청파동 백범 김구 기념관 7층</td>
									<td>2009-01-01</td>
									<td>YES</td>
								</tr>
							</tbody>
						</table>
						<!-- //board list -->
						<!-- button -->
						<div class="btnarea">
							<div class="fr">
								<a href="#"class="btn btn-green">등록</a>
							</div>
						</div>
						<!-- //button -->
						<!-- paging -->
						<div class="dataTables_paginate">
							<ul class="pagination">
								<li class="paginate_button previous disabled" id="dataTables-example_previous"><a href="#">이전</a></li>
								<li class="paginate_button active"><a href="#">1</a></li>
								<li class="paginate_button"><a href="#">2</a></li>
								<li class="paginate_button"><a href="#">3</a></li>
								<li class="paginate_button"><a href="#">4</a></li>
								<li class="paginate_button"><a href="#">5</a></li>
								<li class="paginate_button next" id="dataTables-example_next"><a href="#">다음</a></li>
							</ul>
						</div>
						<!-- //paging -->
					</fieldset>
					<!-- //list -->
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