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
						<legend>생성게시판 리스트</legend>
						<!-- select -->
						<div class="well well-sm">
							<label for="">게시판 선택</label>
							<select name="" id="" class="form-control">
								<option value="">공지사항</option>
							</select>
						</div>
						<!-- //select -->
						<h3>공지사항(선택한 게시판명 노출)</h3>
						<!-- board list -->
						<!-- 일반 -->
						<table class="table table-bordered table-list">
							<caption>게시글 리스트</caption>
							<colgroup>
								<col width="50"/>
								<col width=""/>
								<col width="100"/>
								<col width="70"/>
								
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">등록일</th>
									<th scope="col">노출여부</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2</td>
									<td class="text_left">
										<!-- 수정페이지 이동 --><a href="#">[말머리] 글제목</a>
										<!-- 첨부파일 --><img src="/images/mgr/common/ico_file.gif" alt="파일첨부아이콘" class="img_ico"/>
										<!-- 새글 --><img src="/images/mgr/common/ico_new.gif" alt="새글아이콘" class="img_ico"/>
									</td>
									<td>2009-01-01</td>
									<td>YES</td>
								</tr>
								<tr>
									<td>1</td>
									<td class="text_left"><!-- 수정페이지 이동 --><a href="#">[말머리] 글제목</a></td>
									<td>2009-01-01</td>
									<td>YES</td>
								</tr>
							</tbody>
						</table>
						<!-- //일반 -->
						
						<!-- 사용기간 -->
						<table class="table table-bordered table-list">
							<caption>게시글 리스트</caption>
							<colgroup>
								<col width="50"/>
								<col width=""/>
								<col width="180"/>
								<col width="100"/>
								<col width="70"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">사용기간</th>
									<th scope="col">등록일</th>
									<th scope="col">노출여부</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2</td>
									<td class="text_left"><!-- 수정페이지 이동 --><a href="#">[말머리] 글제목</a></td>
									<td>2014-12-12 ~ 2014-12-12</td>
									<td>2009-01-01</td>
									<td>YES</td>
								</tr>
								<tr>
									<td>1</td>
									<td class="text_left"><!-- 수정페이지 이동 --><a href="#">[말머리] 글제목</a></td>
									<td>2014-12-12 ~ 2014-12-12</td>
									<td>2009-01-01</td>
									<td>YES</td>
								</tr>
							</tbody>
						</table>
						<!-- //사용기간 -->
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