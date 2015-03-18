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
						<legend>교육신청 내용 등록</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>교육신청 게시글 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">교육명</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">교육기간</th>
									<td><label for="">시작일</label> : <input type="text" id="" class="form-control"/> ~ <label for="">종료일</label> : <input type="text" id="" class="form-control"/></td>
								</tr>
								<tr>
									<th scope="row">교육장소</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">교육내용</th>
									<td class="editorWrap">
										<!-- 에디터영역 -->
									</td>
								</tr>
								<tr>
									<th scope="row">노출여부</th>
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
								<a href="#"class="btn btn-green">목록</a>
							</div>
							<div class="fr">
								<!-- 등록페이지 -->
								<button class="btn btn-green">등록</button>
								<button class="btn btn-green">취소</button>
								<!-- 수정페이지 -->
								<button class="btn btn-green">수정</button>
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