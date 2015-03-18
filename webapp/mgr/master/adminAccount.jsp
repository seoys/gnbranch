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
						<legend>관리지부 리스트</legend>
						<!-- search -->
						<div class="well well-sm form-search">
							<label for="" class="blind">지부그룹 선택</label>
							<select name="" id="" class="form-control">
								<option value="">선택</option>
							</select>
							<label for="" class="blind">지부검색어 입력</label> <input type="text" class="form-control"/><button class="btn btn-default">검색</button>
						</div>
						<!-- //search -->
						<!-- board list -->
						<table class="table table-bordered table-list">
							<caption>관리지부 리스트</caption>
							<colgroup>
								<col width="50"/>
								<col width=""/>
								<col width=""/>
								<col width="90"/>
								<col width=""/>
								<col width="70"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">그룹</th>
									<th scope="col">지부명</th>
									<th scope="col">개설일자</th>
									<th scope="col">홈페이지 URL</th>
									<th scope="col">바로가기</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" id="" /><label for="">1</label></td>
									<td>아동보호전문기관</td>
									<td><!-- 수정페이지 이동 --><a href="#">영등포 아동보호전문기관</a></td>
									<td>2009-01-01</td>
									<td>http://yongdungpo.goodneighbors.kr</td>
									<td><a href="http://yongdungpo.goodneighbors.kr" target="_blak" class="btn btn-orange">보기</a></td>
								</tr>
								<tr>
									<td><input type="checkbox" id="" /><label for="">1</label></td>
									<td>아동보호전문기관</td>
									<td><a href="#">영등포 아동보호전문기관</a></td>
									<td>2009-01-01</td>
									<td>http://yongdungpo.goodneighbors.kr</td>
									<td><a href="http://yongdungpo.goodneighbors.kr" target="_blak" class="btn btn-orange">보기</a></td>
								</tr>
							</tbody>
						</table>
						<!-- //board list -->
						<!-- button -->
						<div class="btnarea">
							<div class="fl">
								<button class="btn btn-green">엑셀 다운로드</button>
								<button class="btn btn-green">선택 삭제</button>
							</div>
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