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
						<legend>생성 HTML 페이지 상세</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>HTML 페이지 상세</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">그룹</th>
									<td>아동보호전문기관</td>
								</tr>
								<tr>
									<th scope="row">HTML 페이지명</th>
									<td>HTML 페이지명</td>
								</tr>
								<tr>
									<th scope="row">서브 타이틀</th>
									<td>서브 타이틀</td>
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td class="editorWrap">
										에디터에 입력된 내용 출력
									</td>
								</tr>
								<tr>
									<th scope="row">사용 여부</th>
									<td>Yes</td>
								</tr>
								<tr>
									<th scope="row">수정 권한</th>
									<td>No</td>
								</tr>
							</tbody>
						</table>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fl">
								<a href="#" class="btn btn-green">목록</a>
								<a href="#" target="_blank" class="btn btn-green">미리보기</a>
								<!-- 미리보기 클릭시 Front단에 추가되어진 에디터 입력내용 보임.(디자인 확정 후 작업) -->
							</div>
							<div class="fr">
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