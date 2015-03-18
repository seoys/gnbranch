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
						<legend>온라인 문의 리스트</legend>
						<!-- board list -->
						<table class="table table-bordered table-list">
							<caption>온라인 문의 리스트</caption>
							<colgroup>
								<col width="40"/>
								<col width="50"/>
								<col width=""/>
								<col width="90"/>
								<col width=""/>
								<col width="110"/>
								<col width="90"/>
								<col width="60"/>
								<col width="60"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">구분</th>
									<th scope="col">제목</th>
									<th scope="col">이름</th>
									<th scope="col">이메일</th>
									<th scope="col">연락처</th>
									<th scope="col">등록일</th>
									<th scope="col">확인여부</th>
									<th scope="col">삭제여부</th>
								</tr>
							</thead>
							<tbody>
								<!-- 확인여부 미확인일 경우 class 추가 / 삭제여부 Y일 경우 제목에 a링크 삭제 -->
								<tr>
									<td>2</td>
									<td>단체</td>
									<td><a href="#">문의 있습니다.</a></td>
									<td>홍길동홍길동</td>
									<td>aaa@aaa.com</td>
									<td>010-0000-0000</td>
									<td>2014-00-00</td>
									<td>미확인</td>
									<td>N</td>
								</tr>
								<tr>
									<td>1</td>
									<td>개인</td>
									<td>문의 있습니다.</a></td>
									<td>홍길동</td>
									<td>aaa@aaa.com</td>
									<td>010-0000-0000</td>
									<td>2014-00-00</td>
									<td>확인</td>
									<td>Y</td>
								</tr>
							</tbody>
						</table>
						<!-- //board list -->
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