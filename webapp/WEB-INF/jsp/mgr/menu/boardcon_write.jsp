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
						<legend>게시판 게시글 등록</legend>
						<h3>공지사항(게시판명 노출)</h3>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>게시글 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">말머리 선택</th>
									<td>
										<select name="" id="" class="form-control">
											<option value="">선택</option>
											<option value="">모집공고</option>
											<option value="">행사안내</option>
											<option value="">자원봉사자 모집</option>
											<option value="">지부 홍보</option>
											<option value="">교육 신청안내</option>
											<option value="">정보 자료</option>
											<option value="">직접 입력</option>
										</select>
										<!-- 옵션 직접입력 선택시 필드 활성화 -->
										<input type="text" class="form-control col-unit5" title="말머리타이틀 입력">
									</td>
								</tr>
								<tr>
									<th scope="row">제목</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td class="editorWrap">
										<!-- 에디터영역 -->
									</td>
								</tr>
								<tr>
									<th scope="row">사용 기간</th>
									<td><label for="">시작일</label> : <input type="text" id="" class="form-control"/> ~ <label for="">종료일</label> : <input type="text" id="" class="form-control"/></td>
								</tr>
								<tr>
									<th scope="row">첨부파일</th>
									<td>
										<input type="file"> 
										<!-- 수정페이지일 경우 -->
										<p>첨부되었던파일명노출.doc</p>
									</td>
								</tr>
								<tr>
									<th scope="row">노출 여부</th>
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