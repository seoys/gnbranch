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
						<legend>HTML 페이지 등록</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>HTML 페이지 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">페이지종류 &amp; 형태 </th>
									<!-- 페이지선택 항목 노출 -->
									<td>종류 : <em>게시판</em> 템플릿형태 : <em>일반게시판</em></td>
								</tr>
								<tr>
									<th scope="row">게시판명</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">서브 타이틀</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">템플릿이미지</th>
									<td>
										<!-- 일반게시판 -->
										<img src="/images/mgr/temp/board_temp1.jpg" alt="일반게시판 템플릿" class="temp_img"/>
										<!-- 일반게시판(기간포함) -->
										<!-- <img src="/images/mgr/temp/board_temp2.jpg" alt="일반게시판 템플릿" class="temp_img"/> -->
										<!-- 썸네일형게시판 -->
										<!-- <img src="/images/mgr/temp/board_temp3.jpg" alt="일반게시판 템플릿" class="temp_img"/> -->
										<!-- 갤러리형게시판 -->
										<!-- <img src="/images/mgr/temp/board_temp4.jpg" alt="일반게시판 템플릿" class="temp_img"/> -->
									</td>
								</tr>
								<tr>
									<th scope="row">말머리 사용 여부</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
								<tr>
									<th scope="row">게시판 구분</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> 공개</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> 비공개 (관리자와 본인만 게시글을 볼 수 있음)</label>
									</td>
								</tr>
								<tr>
									<th scope="row">글쓰기 권한</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> 전체</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> 관리자</label>
									</td>
								</tr>
								<tr>
									<th scope="row">작성자 노출</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
								<tr>
									<th scope="row">라이블리 기능 (SNS 댓글)</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
								<tr>
									<th scope="row">사용 기간 선택 기능</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
								<tr>
									<th scope="row">첨부파일 사용</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
								<tr>
									<th scope="row">사용 여부</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fl">
								<button class="btn btn-green">목록</button>
							</div>
							<div class="fr">
								<button class="btn btn-green">등록</button>
								<button class="btn btn-green">취소</button>
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