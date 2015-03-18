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
						<legend>교육신청자 리스트</legend>
						<!-- select -->
						<div class="well well-sm">
							<label for="">교육선택</label>
							<select name="" id="" class="form-control">
								<option value="">인형극</option>
							</select>
						</div>
						<!-- //select -->
						<h3>인형극(선택한 교육명 노출)</h3>
						<!-- board list -->
						<table class="table table-bordered table-list">
							<caption>교육신청자 리스트</caption>
							<colgroup>
								<col width="50"/>
								<col width=""/>
								<col width="150"/>
								<col width="100"/>
								<col width="70"/>
								<col width="100"/>
								<col width="70"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">교육명</th>
									<th scope="col">신청자</th>
									<th scope="col">연락처</th>
									<th scope="col">신청인원</th>
									<th scope="col">신청일</th>
									<th scope="col">확인여부</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2</td>
									<td class="text_left"><!-- 수정페이지 이동 --><a href="#">인형극</a></td>
									<td>[개인] 홍길동</td>
									<td>010-0000-0000</td>
									<td>2명</td>
									<td>2009-01-01</td>
									<td>미확인</td>
								</tr>
								<tr>
									<td>1</td>
									<td class="text_left"><!-- 수정페이지 이동 --><a href="#">인형극</a></td>
									<td>[단체] 어디유치원</td>
									<td>010-0000-0000</td>
									<td>20명</td>
									<td>2009-01-01</td>
									<td>확인</td>
								</tr>
							</tbody>
						</table>
						<!-- //board list -->
						<!-- button -->
						<div class="btnarea">
							<div class="f1">
								<a href="#"class="btn btn-green">신청자리스트 엑셀다운로드</a>
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