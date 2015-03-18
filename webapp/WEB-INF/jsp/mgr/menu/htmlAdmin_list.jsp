<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<jsp:include page="/mgr/include/inc_header.jsp" flush="false" />
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<jsp:include page="/mgr/include/inc_pageTitle.jsp" flush="false" />

				<div class="contents">
					<!-- admin page contents start -->
					
					<h3>사이트 페이지 생성</h3>
					<!-- 페이지생성 -->
					<div class="well well-sm htmlAdmin">
						<fieldset>
							<legend>사이트 페이지 생성</legend>
							<label for="">적용그룹선택</label>
							<!-- 적용그룹선택 -->
							<select name="" id="" class="form-control">
								<option value="">선택</option>
							</select>
							<label for="">페이지종류 선택</label>
							<!-- 페이지종류선택 -->
							<select name="" id="" class="form-control">
								<option value="">HTML</option>
								<option value="">게시판</option>
							</select>
							<label for="">페이지형태 선택</label>
							<!-- 템플릿선택 -->
							<select name="" id="" class="form-control last">
								<!-- HTML -->
								<option value="">해당없음</option>
								<option value="">인사말</option>
								<option value="">지부소개</option>
								<option value="">연혁</option>
								<!-- BOARD -->
								<option value="">일반게시판</option>
								<option value="">일반게시판(기간포함)</option>
								<option value="">썸네일형게시판</option>
								<option value="">갤러리형게시판</option>
							</select>
							<!-- button -->
							<a href="#" target="_blak" class="btn btn-default">페이지 생성하기</a>
						</fieldset>
					</div>
					<!-- //페이지생성 -->
					
					<h3>사이트 페이지 생성리스트</h3>
					<!-- board list -->
					<table class="table table-bordered table-list">
						<caption>사이트 페이지 리스트</caption>
						<colgroup>
							<col width="15%"/>
							<col width="12%"/>
							<col width="20%"/>
							<col width=""/>
							<col width="20%"/>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">
									<!-- 마스터관리자 -->적용그룹
									<!-- 지부관리자 -->NO
								</th>
								<th scope="col">페이지종류</th>
								<th scope="col">페이지형태</th>
								<th scope="col">페이지명</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<!-- 마스터관리자 생성 -->
							<tr class="lock">
								<td>전체공통</td>
								<td>게시판</td>
								<td>자원봉사모집</td>
								<td>2014 연말자원봉사모집</td>
								<td></td>
							</tr>
							<!-- //마스터관리자 생성 -->
							<!-- 지부관리자 -->
							<tr>
								<td>1</td>
								<td>HTML</td>
								<td>인사말</td>
								<td>인사말</td>
								<td><a href="#" target="_blak" class="btn btn-orange">수정</a></td>
							</tr>
							<tr>
								<td>2</td>
								<td>게시판</td>
								<td>일반게시판</td>
								<td>공지사항</td>
								<td>
									<a href="#" target="_blak" class="btn btn-orange">수정</a>
									<!-- 게시판일경우에만 노출 -->
									<a href="#" target="_blak" class="btn btn-orange">컨텐츠 생성</a>
								</td>
							</tr>
							<!-- //지부관리자 -->
						</tbody>
					</table>
					<!-- //board list -->
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