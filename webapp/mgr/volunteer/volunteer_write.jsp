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
						<legend>자원봉사모집 내용 등록</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>자원봉사모집 게시글 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">제목</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">담당자 연락처</th>
									<td>
										<select name="" id="" class="form-control" title="연락처 국번 선택">
											<option value="">선택</option>
										</select>
										<input type="text" class="form-control col-unit1" title="연락처 앞자리 입력"> - <input type="text" class="form-control col-unit1" title="연락처 뒷자리 입력"></td>
								</tr>
								<tr>
									<th scope="row">담당자 이메일</th>
									<td><input type="text" class="form-control col-unit5"></td>
								</tr>
								<tr>
									<th scope="row">봉사장소</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">모집인원</th>
									<td><input type="text" class="form-control">명</td>
								</tr>
								
								<tr>
									<th scope="row">모집기간</th>
									<td><label for="">시작일</label> : <input type="text" id="" class="form-control"/> ~ <label for="">종료일</label> : <input type="text" id="" class="form-control"/></td>
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td class="editorWrap">
										<!-- 에디터영역 -->
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
							<div class="fr">
								<button class="btn btn-green">등록</button>
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